# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.7/ceeker-darwin-arm64.tar.gz"
      sha256 "fa4c3138bcb5c388e1279db7ca6a5e3634544d189aa4be07f6d46cf2e30c50b1"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.7/ceeker-linux-amd64.tar.gz"
      sha256 "9e4748b1ab469179dca564c314b8e87912091bbad769c5bc8c6b174553d1465a"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.7/ceeker-linux-arm64.tar.gz"
      sha256 "7e64d77ae217390adec92869f566ace3a287e6ad2f690e9e5cbdc15af011acfb"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
