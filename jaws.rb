# typed: false
# frozen_string_literal: true

require_relative "lib/private"
class Jaws < Formula
  desc "JAWS a cli tool for managing secrets on major cloud providors"
  homepage "https://github.com/jacbart/jaws"
  version "1.0.8"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jacbart/jaws/releases/download/v1.0.8/jaws_1.0.8_Darwin_x86_64.tar.gz"
      sha256 "baf61f2ba223c05851e30b57de0675fd940a5d58e8b641af98c48ab6b5a0d2af"

      def install
        bin.install "jaws"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jacbart/jaws/releases/download/v1.0.8/jaws_1.0.8_Darwin_arm64.tar.gz"
      sha256 "9f3c00c1d795010e37a3a60061c981bb31d9d76d20993778daf7412ee9120fda"

      def install
        bin.install "jaws"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jacbart/jaws/releases/download/v1.0.8/jaws_1.0.8_Linux_x86_64.tar.gz"
      sha256 "675bccb43c86aa4b51aacc13ebc38bee0112e578ee56cbd189a8dca729c783e3"

      def install
        bin.install "jaws"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jacbart/jaws/releases/download/v1.0.8/jaws_1.0.8_Linux_arm64.tar.gz"
      sha256 "00f2fe05b4392a6430ea20c375eda8f96f78455354228472fdce7dcd8cb32b19"

      def install
        bin.install "jaws"
      end
    end
  end
end
