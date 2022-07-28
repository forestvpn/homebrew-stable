# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fvpn < Formula
  desc ""
  homepage "https://github.com/forestvpn/cli"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.0/fvpn_darwin_amd64.tar.gz"
      sha256 "975a49413c3a39b9b7dda70e3ebb253f94a5463ae74a6f0e97a0b43a11592f15"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.0/fvpn_darwin_arm64.tar.gz"
      sha256 "62133bb7a131b4ee94f8ebe18006ca5286d740166335fcb007aac82274b9ae05"

      def install
        bin.install "fvpn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.0/fvpn_linux_arm64.tar.gz"
      sha256 "45d363e1688451826d3bc8a2539ff1d83084fce59ef04ad7c61c5dab20e65e18"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.1.0/fvpn_linux_amd64.tar.gz"
      sha256 "5df94732c2cf63a7362557cad645f2534bb3e6504cc7d5c6d35a5b18dda941b5"

      def install
        bin.install "fvpn"
      end
    end
  end
end
