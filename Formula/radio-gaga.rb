class RadioGaga < Formula
  include Language::Python::Virtualenv

  desc "Curses-based TUI radio streaming application"
  homepage "https://github.com/githubpoet/radio-gaga"
  url "https://github.com/githubpoet/radio-gaga/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "185f6a9eca2bd7c229f013ceba9b7ee544847be4548ae2980ea84455350347cf"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "python@3.11"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/radio-gaga --version")
  end
end
