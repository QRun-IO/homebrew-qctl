class Qctl < Formula
  desc "CLI for the QRun ecosystem - scaffold, package, and deploy QQQ apps"
  homepage "https://github.com/QRun-IO/qctl"
  version "0.2.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-macos-arm64"
      sha256 "591a0e6a43981bc7a3738633d782258bdef93c759bb4a003df345f8b992c2329"
    end
    on_intel do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-macos-amd64"
      sha256 "566fcb178f057eba63653308caa23b760df81d17ac1e56020deb0ed9aa024f99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-linux-arm64"
      sha256 "5895a5bbde165ab1195893ecf68427c3acbca26e9b2ed26cb86b32312f71f940"
    end
    on_intel do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-linux-amd64"
      sha256 "79654f35570d77d8e65b4856238e83df290f4ab196a2ec39099fa823a545d7f2"
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
