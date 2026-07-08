# typed: false
# frozen_string_literal: true

class Ceeker < Formula
  desc "AI Coding Agent session and progress monitoring TUI"
  homepage "https://github.com/boxp/ceeker"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.0/ceeker-darwin-arm64.tar.gz"
      sha256 "f64198b501bcdc3e8feb0cbeaa894680e1ba8739e0c78f2e17bc1db8111945b6"

      def install
        bin.install "ceeker-darwin-arm64" => "ceeker"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.0/ceeker-linux-amd64.tar.gz"
      sha256 "db979eda1e96bd7f2213a20751369fac0dae6fe58e6d3648d4f3b516800207d7"

      def install
        bin.install "ceeker-linux-amd64" => "ceeker"
      end
    end
    on_arm do
      url "https://github.com/boxp/ceeker/releases/download/v0.4.0/ceeker-linux-arm64.tar.gz"
      sha256 "7323667b4860ab26b9222009fb55e34cad163616074bf81683c498fe0efc496e"

      def install
        bin.install "ceeker-linux-arm64" => "ceeker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ceeker --version")
  end
end
