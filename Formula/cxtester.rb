# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cxtester < Formula
  desc "Google action CLI utility for create Google Actions from CSV files"
  homepage "https://github.com/xavidop/dialogflow-cx-test-runner"
  version "1.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xavidop/dialogflow-cx-test-runner/releases/download/v1.3.1/darwin_arm64_v1.3.1.tar.gz"
      sha256 "fd07f830522814f73c149c6538224ee0823c62f958ea8b9c53b4e82881547190"

      def install
        bin.install "cxtester"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-test-runner/releases/download/v1.3.1/darwin_amd64_v1.3.1.tar.gz"
      sha256 "c906ad34fff56ff25fa461e11a95125388048801618388e1039b138ccf89991b"

      def install
        bin.install "cxtester"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-test-runner/releases/download/v1.3.1/linux_amd64_v1.3.1.tar.gz"
      sha256 "ffceeaad4949e23ecdf3d5a7921f7f63b12413b941c376d67e10e47cafe84da0"

      def install
        bin.install "cxtester"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/xavidop/dialogflow-cx-test-runner/releases/download/v1.3.1/linux_arm64_v1.3.1.tar.gz"
      sha256 "00e2ca1da7e988a37ff25059cfc90e7bbf12cf2d7783bf6f705af5457d7681de"

      def install
        bin.install "cxtester"
      end
    end
  end
end
