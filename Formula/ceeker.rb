# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.3"
  license "MIT"

  on_macos do
    url "https://github.com/boxp/ceeker/releases/download/v0.1.3/ceeker-darwin-arm64.tar.gz"
    sha256 "442850514610f9be4913133640e5fbf3295178b278f0526149b7515bf3f90cff"
  end

  on_linux do
    url "https://github.com/boxp/ceeker/releases/download/v0.1.3/ceeker-linux-amd64.tar.gz"
    sha256 "be28b2185deca4de62128682a60e161b37c87ce24aeb1a04df03c162fd90bb0a"

    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.3/ceeker-linux-arm64.tar.gz"
      sha256 "e8dd0d2c39e3f4225a808dca7395ce5ce75fede55e5b7895bc5491671b353c77"
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
