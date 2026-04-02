# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.6/ceeker-darwin-arm64.tar.gz"
      sha256 "98fcde2361d18ae42476e2c6114a09331eccc1d2a522875b27e22b83dd45ca45"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.6/ceeker-linux-amd64.tar.gz"
      sha256 "7edc664eaf6c16eb8828a6871d4081de2b3a22783e78504445c1bc551f28113f"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.6/ceeker-linux-arm64.tar.gz"
      sha256 "2fd38a32274f31f0212a978db0ee95c89e51eec922027d5a8af7d031feb5283d"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
