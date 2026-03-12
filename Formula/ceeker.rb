# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.0/ceeker-darwin-arm64.tar.gz"
      sha256 "1f286ba8e9157b5237250afe0d514c6f5f5860c7c7fd4e7e1ddd759b74450c29"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.0/ceeker-linux-amd64.tar.gz"
      sha256 "4c5bf4c1c3acd23a754fe7f94d187037f8922fa678820cc01dd78cd1593385a5"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.3.0/ceeker-linux-arm64.tar.gz"
      sha256 "2f7a88044a6094aba0e6650e9aff101dcb98a0781945aacf794fde06cc7efb50"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
