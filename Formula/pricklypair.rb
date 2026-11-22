class pricklypair < Formula
  desc "FIDO, passkey, dice checkpoints; operation approvals; agent grants"
  homepage "https://colony.technology/pricklypair"
  url "https://github.com/colony-technology/pricklypair/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "adb0c08f6551b1a1fa81913331bd9b4cb24eff849e6f54f2bc72fcad379b42cc"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "One-time setup:", shell_output("#{bin}/pricklypair --help")
  end
end
