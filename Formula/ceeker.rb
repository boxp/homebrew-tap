# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.13/ceeker-darwin-arm64.tar.gz"
      sha256 "3161f6b73df8462f8612dd5e69d7356638d59e6bcf51c364ad773a1e1130cdea"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.13/ceeker-linux-amd64.tar.gz"
      sha256 "07fe7dd0c20a91ba87107f7cb8560fd275ef1f71d4434c865803ef9010dcb5ae"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.13/ceeker-linux-arm64.tar.gz"
      sha256 "1001f784c8ba054a18ac82cb62cb22d4e1a1fb981cc6275db36a5df84ad200a1"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
