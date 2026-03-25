import Foundation
import Vision
import ImageIO

if CommandLine.arguments.count < 2 {
    fputs("usage: ocr-vision.swift <image-path>\n", stderr)
    exit(1)
}

let imagePath = CommandLine.arguments[1]
let imageURL = URL(fileURLWithPath: imagePath)

guard let src = CGImageSourceCreateWithURL(imageURL as CFURL, nil),
      let cgImage = CGImageSourceCreateImageAtIndex(src, 0, nil) else {
    fputs("failed to load image\n", stderr)
    exit(2)
}

let request = VNRecognizeTextRequest()
request.recognitionLevel = .accurate
request.usesLanguageCorrection = true
request.recognitionLanguages = ["fr-FR", "en-US"]

let handler = VNImageRequestHandler(cgImage: cgImage, options: [:])

do {
    try handler.perform([request])
    let observations = request.results ?? []
    let sorted = observations.sorted {
        let ay = $0.boundingBox.minY
        let by = $1.boundingBox.minY
        if abs(ay - by) > 0.015 {
            return ay > by
        }
        return $0.boundingBox.minX < $1.boundingBox.minX
    }
    for obs in sorted {
        if let candidate = obs.topCandidates(1).first {
            print(candidate.string)
        }
    }
} catch {
    fputs("vision OCR failed: \(error)\n", stderr)
    exit(3)
}
