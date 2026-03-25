# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.3/ceeker-darwin-arm64.tar.gz"
      sha256 "a77689eefe787c92ad306c6a888a032327774154b67a791c523cecab196f5048"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.3/ceeker-linux-amd64.tar.gz"
      sha256 "c9d9bf9302c3e2f43bd7ea55b2cca03a7e32964c5a33293d2f87015a16142425"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.3/ceeker-linux-arm64.tar.gz"
      sha256 "77c7dfbfbff97df9df63eb002dd2c37fb9b0bde1451aee7969483b6164a78dc3"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
