# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.12/ceeker-darwin-arm64.tar.gz"
      sha256 "aa17c520aa94be112b7939b3b971edd0b224aa3121f554e3f6e186aa00b79a14"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.12/ceeker-linux-amd64.tar.gz"
      sha256 "87683ae505072ccd95f25548ac38ef7fdf08d5d586734d406076ff9049fa57d2"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.12/ceeker-linux-arm64.tar.gz"
      sha256 "0b9bfeaf3ab4edeb78f22054761e4ca1cfe6d555af903ed65bb7ea6eca670106"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
