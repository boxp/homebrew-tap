# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.15/ceeker-darwin-arm64.tar.gz"
      sha256 "33362a3c7919f3b1609b38367f42b6527e99f62653f31feff228cda419f24a1a"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.15/ceeker-linux-amd64.tar.gz"
      sha256 "4d96f3d650e79608757cb1b06314effd3b94328b91a505e9f48aeaf01a58bad3"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.15/ceeker-linux-arm64.tar.gz"
      sha256 "d6bf3749359816abaf8e2e13f39d78d5e359cbe5e22b7c47d72449ef07e38a08"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
