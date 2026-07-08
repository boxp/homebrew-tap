# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.3/ceeker-darwin-arm64.tar.gz"
      sha256 "12b466a49195430650bc6dcfe9dc54a125d92789b16794e89d13274f2da94503"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.3/ceeker-linux-amd64.tar.gz"
      sha256 "fe70b41f1cff7e6cb3c52eda3b61812c607444186491e400dbd4116d85ba674e"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.3/ceeker-linux-arm64.tar.gz"
      sha256 "8d937e6efead4dbd977944a9d4faf2147c97633b0edc3e90d72fcd241b672bc5"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
