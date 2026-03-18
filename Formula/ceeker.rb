# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.1/ceeker-darwin-arm64.tar.gz"
      sha256 "51e774e3ed85400848a768344f299d0f09f9ef27d8a793a93b8d536cd62382dc"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.1/ceeker-linux-amd64.tar.gz"
      sha256 "390b95238c284ae706ce56c10de015caea53a9aab7fbc10781521d4cfd23d699"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.1/ceeker-linux-arm64.tar.gz"
      sha256 "0f4373341d44f563552db7e4d151ab82fa91dfd8c61203cdf476bb8d786199b8"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
