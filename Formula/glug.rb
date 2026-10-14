class Glug < Formula
  desc "JSON log parser and colorizer"
  homepage "https://github.com/d0ugal/glug"
  url "https://github.com/d0ugal/glug/archive/refs/tags/v1.1.7.tar.gz"
  sha256 "9c71829d50d386e04348a737cba6c18bd98cbaf8339c54bf8f1e301551071d90"
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
