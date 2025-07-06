class RadioGaga < Formula
  include Language::Python::Virtualenv

  desc "Curses-based TUI radio streaming application"
  homepage "https://github.com/githubpoet/radio-gaga"
  url "https://github.com/githubpoet/radio-gaga/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "895488ddd29c5efe55bf495637eb3bcc94c4cbce343d1fc9839da68a5aa47010"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "python@3.11"

  def install
    virtualenv_create(libexec, "python3.11")
    system libexec/"bin/pip", "install", "-r", "requirements.txt"
    system libexec/"bin/pip", "install", buildpath
    bin.install_symlink libexec/"bin/radio.py" => "radio-gaga"
  end

  test do
    assert_match "Radio Gaga", shell_output("#{bin}/radio-gaga --help")
  end
end
