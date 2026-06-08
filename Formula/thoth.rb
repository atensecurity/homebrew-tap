class Thoth < Formula
  desc "Thoth MCP governance runtime and headless control-plane CLI"
  homepage "https://github.com/atensecurity/thoth"
  version "0.3.4"
  url "https://github.com/atensecurity/thoth/releases/download/v0.3.4/thoth-macos-universal.tar.gz"
  sha256 "35ee2ace59af9828689c2f07bdac51d05bd878f811bb9c304760bb493622e668"
  depends_on :macos

  def install
    if File.exist?("bin/thoth") && File.exist?("bin/thothctl")
      bin.install "bin/thoth", "bin/thothctl"
    elsif File.exist?("thoth") && File.exist?("thothctl")
      bin.install "thoth", "thothctl"
    else
      odie "Could not find thoth binaries in archive root or bin/ directory"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/thoth --version")
    assert_match version.to_s, shell_output("#{bin}/thothctl --version")
  end
end
