# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.5"
  license "MIT"

  on_macos do
    url "https://github.com/boxp/ceeker/releases/download/v0.1.5/ceeker-darwin-arm64.tar.gz"
    sha256 "b5226433cb49625f597732b9bd3e14320e422f91dad57a03bb1954adb77561b4"
  end

  on_linux do
    url "https://github.com/boxp/ceeker/releases/download/v0.1.5/ceeker-linux-amd64.tar.gz"
    sha256 "c8c42abf1c11c89d59732d04b48ff1fbbf8c728db6957e99be42a65bdb240b3e"

    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.5/ceeker-linux-arm64.tar.gz"
      sha256 "8f64edfe1d5a06fe3a814b08f863d3d5e1ef30e8e6e79f856cdd3b41c0bac91a"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      odie "ceeker does not currently provide macOS Intel binaries."
    end

    binary = if OS.mac?
      "ceeker-darwin-arm64"
    elsif File.exist?("ceeker-linux-arm64")
      "ceeker-linux-arm64"
    else
      "ceeker-linux-amd64"
    end

    bin.install binary => "ceeker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
