# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.11/ceeker-darwin-arm64.tar.gz"
      sha256 "81b8e31de02e46f551a4e01fad737221eb0d076b5bb0e70ae44da882111b2df5"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.11/ceeker-linux-amd64.tar.gz"
      sha256 "147c340e8529d849c9b842ba1425e011c60bfa658238d7c6624dc0009ccc7a00"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.11/ceeker-linux-arm64.tar.gz"
      sha256 "13d8e7184e361e098b8f1ef470769e4e4413e6d6e628005eb2f7e4dff2c387a9"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
