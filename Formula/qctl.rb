class Qctl < Formula
  desc "CLI for the QRun ecosystem - scaffold, package, and deploy QQQ apps"
  homepage "https://github.com/QRun-IO/qctl"
  version "0.0.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-macos-arm64"
      sha256 "b42d02795c276c932cbe30377d9b8a93ed1a4fe584ff4b39f4224b20ad2e8b3b"
    end
    on_intel do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-macos-amd64"
      sha256 "c2514984a85025824856639ff5ce0e02ad3105b604d9ffdf56bff197531c3359"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-linux-arm64"
      sha256 "8b827cb6cb3e9c2cec5c7d80eb39e00eb17e99a62a7a9ba123570d817ccd918a"
    end
    on_intel do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-linux-amd64"
      sha256 "41692eb838c377b74d848645f42f92b582fc27de5282b4849cdb1ce92e6b4000"
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
