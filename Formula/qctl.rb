class Qctl < Formula
  desc "CLI for the QRun ecosystem - scaffold, package, and deploy QQQ apps"
  homepage "https://github.com/QRun-IO/qctl"
  version "0.0.2"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-macos-arm64"
      sha256 "6a79428dd569ccbe1fe0f833d335d707da5919cef6ec8e8003d4efc4ecc14af9"
    end
    on_intel do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-macos-amd64"
      sha256 "e70048efefa2374243daa652540465e705591a4cbd22aa1371a29b47815b9057"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-linux-arm64"
      sha256 "40088e1fa27e408b7ef1712eb733f352a2bf98b80cd3462a159477cd0ca9f3ec"
    end
    on_intel do
      url "https://github.com/QRun-IO/qctl/releases/download/v#{version}/qctl-linux-amd64"
      sha256 "374f0f10a8aa781e1b5b8d72483ec257dfee9794b69419c7700f55ad7fbcf4b3"
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
