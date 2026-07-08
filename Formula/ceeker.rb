# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.2/ceeker-darwin-arm64.tar.gz"
      sha256 "d9d4243e7d7eb7881476c40031bde879aa96c9a65cbd2d8098b11cd2f450b528"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.2/ceeker-linux-amd64.tar.gz"
      sha256 "b7b1faf5c4248d2145361ac1563726fe86410527e57f34270731930c39c48e6f"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.2/ceeker-linux-arm64.tar.gz"
      sha256 "5df14e91fd095121bdbcfb40fc1e29addfcdfb34a4f095b8d23af453880bed00"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
