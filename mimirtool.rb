# This file was generated by GoReleaser. DO NOT EDIT.
class Mimirtool < Formula
  desc "Tools for interacting with Mimir"
  homepage "https://grafana.com"
  version "2.1.0"

  deprecate! date: "2022-12-15", because: "is not maintained; use mimirtool formula from homebrew-core instead (brew uninstall grafana/grafana/mimirtool && brew install mimirtool)"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grafana/mimir/releases/download/mimir-2.1.0/mimirtool-darwin-arm64"
      sha256 "f1ae4a84a3ca0a0651c7d3f1c1dd9194c45de6ad154e985dc0782173852ced15"

      def install
        bin.install "mimirtool-darwin-arm64" => "mimirtool"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/grafana/mimir/releases/download/mimir-2.1.0/mimirtool-darwin-amd64"
      sha256 "13418684de6dd88e84679b2c1b1b581856a2a4da2ab92e4d895b4db62332b13d"

      def install
        bin.install "mimir-darwin-amd64" => "mimirtool"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/grafana/mimir/releases/download/mimir-2.1.0/mimirtool-linux-amd64"
      sha256 "44cd587702e017e6f2592dc5a77b3a8255122d0b46a01cb445db7074d59568a7"

      def install
        bin.install "mimirtool-linux-amd64" => "mimirtool"
      end
    end
  end
end
