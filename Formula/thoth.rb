class Thoth < Formula
  desc "Thoth MCP governance runtime and headless control-plane CLI"
  homepage "https://github.com/atensecurity/thoth"
  version "0.3.4"
  url "https://github.com/atensecurity/thoth/releases/download/v0.3.4/thoth-macos-universal.tar.gz"
  sha256 "35ee2ace59af9828689c2f07bdac51d05bd878f811bb9c304760bb493622e668"
  depends_on :macos

  def install
    bin.install "bin/thoth", "bin/thothctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/thoth --version")
    assert_match version.to_s, shell_output("#{bin}/thothctl --version")
  end
end
