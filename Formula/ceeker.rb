# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.7/ceeker-darwin-arm64.tar.gz"
      sha256 "3ffd3285f1419659cc25dc508a47d49b6c2e9033231ea464b2028d60a3d13983"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.7/ceeker-linux-amd64.tar.gz"
      sha256 "29dd5e8fa8195ddafbd30efb6595c5f6f3d31ffe22ccd7dca4794ba157dfa64a"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.7/ceeker-linux-arm64.tar.gz"
      sha256 "170a3155a7445ec68d4c87666f27c154fe982549f50f24926e46a3f102d1bed3"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
