import Foundation
import PDFKit

enum ExitCode: Int32 {
    case usage = 1
    case loadFailed = 2
    case invalidPage = 3
    case noUsableText = 4
}

var pageNumber = 1
var minChars = 24
var allowShort = false
var inputPath: String?

var index = 1
while index < CommandLine.arguments.count {
    let arg = CommandLine.arguments[index]
    switch arg {
    case "--page":
        guard index + 1 < CommandLine.arguments.count,
              let value = Int(CommandLine.arguments[index + 1]),
              value > 0 else {
            fputs("Invalid value for --page\n", stderr)
            exit(ExitCode.usage.rawValue)
        }
        pageNumber = value
        index += 2
    case "--min-chars":
        guard index + 1 < CommandLine.arguments.count,
              let value = Int(CommandLine.arguments[index + 1]),
              value >= 0 else {
            fputs("Invalid value for --min-chars\n", stderr)
            exit(ExitCode.usage.rawValue)
        }
        minChars = value
        index += 2
    case "--allow-short":
        allowShort = true
        index += 1
    case "--help", "-h":
        fputs("usage: pdf-page-text.swift [--page N] [--min-chars N] [--allow-short] <pdf-path>\n", stderr)
        exit(0)
    default:
        if arg.hasPrefix("-") {
            fputs("Unknown option: \(arg)\n", stderr)
            exit(ExitCode.usage.rawValue)
        }
        if inputPath != nil {
            fputs("Only one input path is supported.\n", stderr)
            exit(ExitCode.usage.rawValue)
        }
        inputPath = arg
        index += 1
    }
}

guard let inputPath else {
    fputs("Missing PDF path\n", stderr)
    exit(ExitCode.usage.rawValue)
}

let pdfURL = URL(fileURLWithPath: inputPath)
guard let document = PDFDocument(url: pdfURL) else {
    fputs("Failed to load PDF\n", stderr)
    exit(ExitCode.loadFailed.rawValue)
}

guard let page = document.page(at: pageNumber - 1) else {
    fputs("PDF page \(pageNumber) is out of range.\n", stderr)
    exit(ExitCode.invalidPage.rawValue)
}

func normalizeText(_ raw: String) -> String {
    let unified = raw
        .replacingOccurrences(of: "\r\n", with: "\n")
        .replacingOccurrences(of: "\r", with: "\n")

    var normalizedLines: [String] = []
    var blankStreak = 0

    for line in unified.components(separatedBy: "\n") {
        let cleaned = line.trimmingCharacters(in: .whitespaces)
        if cleaned.isEmpty {
            blankStreak += 1
            if blankStreak <= 2 {
                normalizedLines.append("")
            }
            continue
        }
        blankStreak = 0
        normalizedLines.append(cleaned)
    }

    return normalizedLines
        .joined(separator: "\n")
        .trimmingCharacters(in: .whitespacesAndNewlines)
}

func hasUsableText(_ text: String, minChars: Int) -> Bool {
    guard !text.isEmpty else {
        return false
    }

    let scalarCount = text.unicodeScalars.reduce(into: 0) { count, scalar in
        if CharacterSet.alphanumerics.contains(scalar) {
            count += 1
        }
    }

    if scalarCount >= minChars {
        return true
    }

    let words = text.split { $0.isWhitespace || $0.isNewline }
    return words.count >= 6 && scalarCount >= max(12, minChars / 2)
}

let text = normalizeText(page.string ?? "")
let usable = allowShort ? !text.isEmpty : hasUsableText(text, minChars: minChars)

guard usable else {
    fputs("No usable PDF text layer found on page \(pageNumber).\n", stderr)
    exit(ExitCode.noUsableText.rawValue)
}

print(text)
