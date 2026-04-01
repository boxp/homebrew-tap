# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.4/ceeker-darwin-arm64.tar.gz"
      sha256 "a09f56e373b9c21b3ec9dbd7dece5f7f4da6a70c961943d194f182f6ce1a6c15"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.4/ceeker-linux-amd64.tar.gz"
      sha256 "4824ebda5d45a963b0ed9a010c85eefa3979a3387415d7b52db441a951464f91"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.4/ceeker-linux-arm64.tar.gz"
      sha256 "e182a28862c5043d4e964a7d4261df6407e1e369778f2eec2212315767c217e7"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
