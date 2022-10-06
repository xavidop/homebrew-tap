# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cxtester < Formula
  desc "Google action CLI utility for create Google Actions from CSV files"
  homepage "https://github.com/xavidop/dialogflow-cx-test-runner"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-test-runner/releases/download/v1.2.0/darwin_amd64_v1.2.0.tar.gz"
      sha256 "44bf8e3195035a3a95d879962ea613a211d77c42eb461f72bcf8c2185d46c18c"

      def install
        bin.install "cxtester"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/xavidop/dialogflow-cx-test-runner/releases/download/v1.2.0/darwin_arm64_v1.2.0.tar.gz"
      sha256 "6fb1ddd2304f00406463a309816626fb3d7ad3f94f190e4d31270a5ab2f568f8"

      def install
        bin.install "cxtester"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-test-runner/releases/download/v1.2.0/linux_amd64_v1.2.0.tar.gz"
      sha256 "cbd0672851440cef8a5ea35114c6169c113897c23f46fa7f1af36617b4522d2f"

      def install
        bin.install "cxtester"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/xavidop/dialogflow-cx-test-runner/releases/download/v1.2.0/linux_arm64_v1.2.0.tar.gz"
      sha256 "3e0a25fc78a415d81926a21df529d6add69b97303b5a90255feae8008e42e3df"

      def install
        bin.install "cxtester"
      end
    end
  end
end
