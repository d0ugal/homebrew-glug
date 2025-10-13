class Glug < Formula
  desc "JSON log parser and colorizer"
  homepage "https://github.com/d0ugal/glug"
  url "https://github.com/d0ugal/glug/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "a2d5b0b5076f43ac42c4cce705e9e0227642d6feaf26e1075fb1769dc2e968dc"
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
