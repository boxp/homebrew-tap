# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.4/ceeker-darwin-arm64.tar.gz"
      sha256 "af21611e876ae64961ef28c85c2ceced2b101c7751e32c9dbfd5197261858739"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.4/ceeker-linux-amd64.tar.gz"
      sha256 "7e174be3c63f0de00ca751ff11c093a59c14969490c15a0ec2d2ae6feac4f0c4"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.4/ceeker-linux-arm64.tar.gz"
      sha256 "1f7d85aec912e106c7cd61bb590e6460b45c045e921c41e2f42551d49e5afcee"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
