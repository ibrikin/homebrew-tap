class Pngpaste < Formula
  desc "Save clipboard images to files"
  homepage "https://github.com/ibrikin/pngpaste"
  url "https://github.com/ibrikin/pngpaste/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "99dcc5a2c9b80d2d9bd5c5748ef0aa467186c9c3104fe73352454cff86664880"
  head "https://github.com/ibrikin/pngpaste.git", branch: "main"

  depends_on macos: :ventura
  depends_on xcode: :build

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/pngpaste"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pngpaste -v")
  end
end
