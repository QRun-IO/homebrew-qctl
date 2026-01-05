class Qctl < Formula
  desc "CLI for the QRun ecosystem - scaffold, package, and deploy QQQ apps"
  homepage "https://github.com/QRun-IO/qctl"
  version "0.2.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-macos-arm64"
      sha256 "abb3c8efddb5e76f3edf79ff36b745516d1c9e785098cb3660993ded832b185a"
    end
    on_intel do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-macos-amd64"
      sha256 "d91e98ea2082d7ad0d2c8acd4bed33bcfe2cc34a8a0a0879cbc0d9ecb6f9edcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-linux-arm64"
      sha256 "3cbc9b82c028fdc594f2c741e97a62f64b770bda44a820fb07c74da1ab4eaf84"
    end
    on_intel do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-linux-amd64"
      sha256 "a519fee389b5be2cff2d01b76cc958c3c36156f3f0c2693636afee37c4fc7b1d"
    end
  end

  def install
    binary = Dir["qctl*"].first
    bin.install binary => "qctl"
  end

  test do
    assert_match "qctl", shell_output("#{bin}/qctl --version")
  end
end
