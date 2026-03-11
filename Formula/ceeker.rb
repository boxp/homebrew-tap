# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.17/ceeker-darwin-arm64.tar.gz"
      sha256 "70594812bc3a353ef81f5fcbcee88e7a92f5c14e833bc2c8a878aa6798bc5b63"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.17/ceeker-linux-amd64.tar.gz"
      sha256 "f468b8b75fd10afc22aea8e6a1e01c68733d949fc9266838bfc1531ba1414bfa"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.17/ceeker-linux-arm64.tar.gz"
      sha256 "43e006f7b2967b3fc7281df5e47b3fe23c57f0eee586272b38d40a5fb2a70a66"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
