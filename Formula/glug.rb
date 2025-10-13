class Glug < Formula
  desc "JSON log parser and colorizer"
  homepage "https://github.com/d0ugal/glug"
  url "https://github.com/d0ugal/glug/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "da86b101cabe1181713d26d8b85dc4c0dff7bc97351a79b94011af335ff1c6d4"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-o", "glug", "."
    bin.install "glug"
  end

  test do
    # Test that the binary works
    assert_match "glug", shell_output("#{bin}/glug --version")
  end
end
