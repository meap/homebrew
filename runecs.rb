# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runecs < Formula
  desc "Effortlessly Execute One-Off Tasks and Database Migrations in Your ECS Cluster"
  homepage "https://github.com/meap/runecs"
  version "0.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/meap/runecs/releases/download/v0.6/runecs_Darwin_x86_64.tar.gz"
      sha256 "733aff502b77b5d8c8bc3b63fc77dac7d94eb727ed4ef32e13f2c5c97b4a9127"

      def install
        bin.install "runecs"
      end
    end
    on_arm do
      url "https://github.com/meap/runecs/releases/download/v0.6/runecs_Darwin_arm64.tar.gz"
      sha256 "127acd570d5afb63734656657841088495be36cd525aec7bdb5c89ae4b9a1eba"

      def install
        bin.install "runecs"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/meap/runecs/releases/download/v0.6/runecs_Linux_x86_64.tar.gz"
        sha256 "9b18af28927f167f9bfc16e5e6ecba7810b99fe5f5699724c20fab4ec9fc72a0"

        def install
          bin.install "runecs"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/meap/runecs/releases/download/v0.6/runecs_Linux_armv6.tar.gz"
        sha256 "334e22c0e53e06fb3220e50eba0d1c970d522835f46b4c495288330882283905"

        def install
          bin.install "runecs"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/meap/runecs/releases/download/v0.6/runecs_Linux_arm64.tar.gz"
        sha256 "fbe95af2a314e109abfe32b69d931ba524afce23e37002161beb76d6b032adf8"

        def install
          bin.install "runecs"
        end
      end
    end
  end
end
