# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.5/ceeker-darwin-arm64.tar.gz"
      sha256 "cf0b8ba122335b45dab9ab86386206f138a6cc40ea5128397f84f90a0b38dcd1"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.5/ceeker-linux-amd64.tar.gz"
      sha256 "967d979fd3bda0733cd1347523db335060b93e40b4dea572eabbc65c978dd54d"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.5/ceeker-linux-arm64.tar.gz"
      sha256 "fbeff542510237ee44e42cba5ef236775c9d4d09b36f6aecac56df1ebcf7369a"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
