# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.9/ceeker-darwin-arm64.tar.gz"
      sha256 "1a553de14aaf106988f8615356e1f8b3d310b4d3a008633cdd3f9678f0321415"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.9/ceeker-linux-amd64.tar.gz"
      sha256 "a5192879b314b59082a1e44a52d6e3b24d697135c894df73259c744e5931152e"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.9/ceeker-linux-arm64.tar.gz"
      sha256 "41b98c9702694a83889c6a6bc8e5edf72ccf22a9e7da69b7620d7f5465bc7f37"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
