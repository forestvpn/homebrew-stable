# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fvpn < Formula
  desc "Forest VPN CLI client for macOS, Linux, and Windows"
  homepage "https://github.com/forestvpn/cli"
  version "0.1.9-dev.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.9-dev.7/fvpn_darwin_amd64.tar.gz"
      sha256 "c93e3f18ca94115cc746ab296862933f426a3583c4dbaf989ae8fda5a3ede9d6"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.9-dev.7/fvpn_darwin_arm64.tar.gz"
      sha256 "c12567a0f6cfcc0456840e95099b33f55f6c81399ff83d8aa42aea5e2b9175be"

      def install
        bin.install "fvpn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.9-dev.7/fvpn_linux_arm64.tar.gz"
      sha256 "73159bdd3f565fcd8934c6a0de30e394991c043ae95a1b7a5f1e5fc8d1985719"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.9-dev.7/fvpn_linux_amd64.tar.gz"
      sha256 "68df3c178ea2d418ddcd30a995d49157d204a2181a107d85f848eec3abb47f56"

      def install
        bin.install "fvpn"
      end
    end
  end

  depends_on "wireguard-tools"

  test do
    system "#{bin}/fvpn version"
  end
end
