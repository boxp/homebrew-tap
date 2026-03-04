# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.0.8/ceeker-darwin-arm64.tar.gz"
      sha256 "040c12266c750ea9cad8c5ef72baa37a2babbffaca5f3c1a84c88a752b6eaa65"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.0.8/ceeker-linux-amd64.tar.gz"
      sha256 "f5175e0ab6075b8bd2eaebecbc1c7a864de945aca3943efb0757b896f8639ae1"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.0.8/ceeker-linux-arm64.tar.gz"
      sha256 "f9d9980088675c4146346174a457c27d6008de58fd4b63420e9c23ce7c562a9f"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
