# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.5.0/ceeker-darwin-arm64.tar.gz"
      sha256 "c913a41d6191b66589b9832707e3abad05afdc82d6f0794b071c0fe3f7f40d17"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.5.0/ceeker-linux-amd64.tar.gz"
      sha256 "f2db38cb7711bbddc8bf1dff7ec7f074b884c41dee164417c389f6c59c659d40"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.5.0/ceeker-linux-arm64.tar.gz"
      sha256 "e07080d4574d6262a1520f60e750d0d5d46e0135d4e3b0ff9ea56562a1f446cf"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
