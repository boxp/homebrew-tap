# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.14/ceeker-darwin-arm64.tar.gz"
      sha256 "4819a17f2dfe651f497e6af8cfe10f7615805ac70a58b7926e64684c4074ebc2"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.14/ceeker-linux-amd64.tar.gz"
      sha256 "4d4761d846d495fb6348a92ead136bb72bafcadae344cd79a6453b7100c8e9c9"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.14/ceeker-linux-arm64.tar.gz"
      sha256 "c665426c16836baf2d16247c790a3f060ee26baff7c5474bf0357aa2e0959028"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
