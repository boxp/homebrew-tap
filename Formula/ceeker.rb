# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.5/ceeker-darwin-arm64.tar.gz"
      sha256 "c08c006761bc1c6c9e03257795de30171a9d17833e95958f94b4806416c5a198"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.5/ceeker-linux-amd64.tar.gz"
      sha256 "88acf7e17bed2562e1e4adf84c1f5c08a1ddfddf63e50e0142eb2259906b2faf"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.5/ceeker-linux-arm64.tar.gz"
      sha256 "099c62faf68840e19569f2f5f5659168fc88cd5468a02f34a0ab996598458547"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
