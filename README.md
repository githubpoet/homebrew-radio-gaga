# homebrew-radio-gaga

A Homebrew tap for the radio-gaga terminal radio streamer.

## Usage

To use this tap, first add it to your Homebrew installation:

```bash
brew tap githubpoet/radio-gaga
```

Then install the radio-gaga package:

```bash
brew install githubpoet/radio-gaga/radio-gaga
```

## About

This tap provides the radio-gaga terminal radio streamer application through Homebrew package manager.

## Bumping Versions

When a new version of radio-gaga is released, you can update the formula using one of these methods:

### Method 1: Using brew bump-formula-pr

```bash
brew bump-formula-pr radio-gaga --url=<new-tarball-url>
```

### Method 2: Manual edit

1. Edit the formula file to update the URL and SHA256 hash
2. Run the audit command to verify the changes:

```bash
brew audit --strict --online radio-gaga
```

## Requirements

- macOS or Linux
- Homebrew package manager

## Support

For issues with the radio-gaga application itself, please visit the main project repository.
For issues with this tap, please open an issue in this repository.
