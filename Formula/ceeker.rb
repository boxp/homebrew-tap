# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.8/ceeker-darwin-arm64.tar.gz"
      sha256 "904b6b518f6e189f4af8ef7b56e77e47806d84c513a3b3b034bbfc9ee4ee284a"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.8/ceeker-linux-amd64.tar.gz"
      sha256 "6a9f43894be756c4a4982cc02a95c69d98beff483edbdc7e137e5c46f143f08f"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.8/ceeker-linux-arm64.tar.gz"
      sha256 "1319143183334189c5e3d2f3d30ede1b09ba20b15f4f4abd3e1e97b19226e525"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
