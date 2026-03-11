# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.2.1/ceeker-darwin-arm64.tar.gz"
      sha256 "10ab7b7df1dedef09f7e44ad5a400d6851a56b9a54eede3a58baa3ee6ea7b7a4"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.2.1/ceeker-linux-amd64.tar.gz"
      sha256 "fe989578af5a9ae5dcda69b39e751472e96b87fb0683cbfb4ce9e20c4fae3f84"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.2.1/ceeker-linux-arm64.tar.gz"
      sha256 "c80d5137bd675f2bbb8bc47ad95af16eac729077f5f29cddc3e2cc2ec7487c3d"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
