# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runecs < Formula
  desc ""
  homepage "https://github.com/meap/runecs"
  version "0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meap/runecs/releases/download/v0.4/runecs_Darwin_arm64.tar.gz"
      sha256 "d8bbc7bda34a1b7264d5a3d85f0c4dc1f02810069ffdf673ffab383854748d94"

      def install
        bin.install "runecs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/meap/runecs/releases/download/v0.4/runecs_Darwin_x86_64.tar.gz"
      sha256 "31e5e13a5b01c346a309d267727915f30cfbea699400def8e96662ffae6fbb1f"

      def install
        bin.install "runecs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/meap/runecs/releases/download/v0.4/runecs_Linux_x86_64.tar.gz"
      sha256 "4cee901d019549bdbf18aaa507337dda7a23b791c0912d1ebcc6e4b99c9b2da1"

      def install
        bin.install "runecs"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/meap/runecs/releases/download/v0.4/runecs_Linux_arm64.tar.gz"
      sha256 "084219764c50735af3d5319934045c570029a3cb23bf4d637d8ad83e7d248a97"

      def install
        bin.install "runecs"
      end
    end
  end
end
