# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.2/ceeker-darwin-arm64.tar.gz"
      sha256 "56debec68b862a6369ed8d26b58a16e25617c5ae9a3c8960f51be370fc2bc42b"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.2/ceeker-linux-amd64.tar.gz"
      sha256 "cbd347fb703eb9754602a3cc1604bb5fd711d1cbafd22940d176c0b5a531d24d"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.2/ceeker-linux-arm64.tar.gz"
      sha256 "aa33b07adaa5d3d4b2dfde3dcbdeaa83c8393d29651370bb80b3979974b47b0c"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
