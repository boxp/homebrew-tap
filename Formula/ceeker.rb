# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.8/ceeker-darwin-arm64.tar.gz"
      sha256 "b0007dda4644c1eea7747f240f6148a97e9e447956363f51aec84e4de066f6eb"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.8/ceeker-linux-amd64.tar.gz"
      sha256 "023515c7fe686b749ceee481ba3bd27e22dced34d625a6071aacbf2a2686b0a8"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.8/ceeker-linux-arm64.tar.gz"
      sha256 "b3fcff11683eeba763f860dcd85fa782b667547a61dfe81960419787d720f9c2"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
