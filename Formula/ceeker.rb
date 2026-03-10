# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.16/ceeker-darwin-arm64.tar.gz"
      sha256 "d69470b6beed4b101b124f42ebcc9f23ce27687f646f531adbffe51dc56cd5fb"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.16/ceeker-linux-amd64.tar.gz"
      sha256 "c25287e419e68ca3e6437eccaf2af2bae59fcd90558d7ddb3a16322c210e8bc7"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.16/ceeker-linux-arm64.tar.gz"
      sha256 "8a7b5440f6b53e2d7e5677800496a92ea446afc5623359c7442b918b88a09575"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
