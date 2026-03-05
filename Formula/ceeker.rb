# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.6/ceeker-darwin-arm64.tar.gz"
      sha256 "90dad47f73fa611e987618a69d37594641f349f54419600d53a3d2e192798aa5"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.6/ceeker-linux-amd64.tar.gz"
      sha256 "19d80bf0080d9c68fae9582c028d3e810b9ec48e69152e00fb6eea6f1b6553a3"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.6/ceeker-linux-arm64.tar.gz"
      sha256 "02034c1070a0e11ec820e5ce8f19ae38f633f7d6c360ad83f33fa5164dff6bd0"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
