# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.1.4"
  license "MIT"

  on_macos do
    url "https://github.com/boxp/ceeker/releases/download/v0.1.4/ceeker-darwin-arm64.tar.gz"
    sha256 "326a9a5d55ecedbda3521558b1f162e6a5d432a8a9ae72a5753b1b1eac793173"
  end

  on_linux do
    url "https://github.com/boxp/ceeker/releases/download/v0.1.4/ceeker-linux-amd64.tar.gz"
    sha256 "e001c72ffd511a991fb5095bf1c1154b18dfad5a050e1992036eae7812d7a529"

    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.1.4/ceeker-linux-arm64.tar.gz"
      sha256 "b684dcd9bc227bd630b4c6dd4d359c1f90c7d61276f3d210dbd087930868ed72"
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
