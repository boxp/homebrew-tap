# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.10/ceeker-darwin-arm64.tar.gz"
      sha256 "4d3b76707cbe9ecab5d7fdd52b543177f0424f130375bbcf9a1b3a8fe8853d71"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.10/ceeker-linux-amd64.tar.gz"
      sha256 "eb2e1db65dafd88a5cfd594eca00ff7ee7186691c345d53adf9fe8bd39e9f7dc"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.10/ceeker-linux-arm64.tar.gz"
      sha256 "b028270fe8e6f7a7f2da2479baff10b5a0d8163484033af45953361e6fb79cad"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
