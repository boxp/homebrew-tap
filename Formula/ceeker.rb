# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.1/ceeker-darwin-arm64.tar.gz"
      sha256 "f3484cfd21fd74f20c525141fa3bb76174d44ee1046f8a30c1051093c2913d90"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.1/ceeker-linux-amd64.tar.gz"
      sha256 "216e8db3191414d03d7181506469a88fec982b7383376fa6b85c24b2d724a900"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.1/ceeker-linux-arm64.tar.gz"
      sha256 "ac0ba85af4cf565a9f9b49981cfbb25818d097344e58a6812546a8236c4a1caf"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
