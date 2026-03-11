# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.2.0/ceeker-darwin-arm64.tar.gz"
      sha256 "f3d39ae1aed4ca6d55d40adef672c79aad74602b6386517652d47a82bde13dc1"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.2.0/ceeker-linux-amd64.tar.gz"
      sha256 "810c1349dcb787ff7acb79287f4b85290f9fc40cf501faa7a4009e943f5ac275"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.2.0/ceeker-linux-arm64.tar.gz"
      sha256 "cf31dcfb0b717ce621b7dfca4f2277ee1a6a6d8fdb3274a804f83245f29161ed"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
