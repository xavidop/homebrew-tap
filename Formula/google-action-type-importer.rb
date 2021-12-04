# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoogleActionTypeImporter < Formula
  desc "Google action CLI utility for create Google Actions from CSV files"
  homepage "https://github.com/xavidop/google-action-type-importer"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xavidop/google-action-type-importer/releases/download/v1.0.1/darwin_arm64_v1.0.1.tar.gz"
      sha256 "3a0ba3daefdfea9dac0b0ca43a8ee817559ae574ba9bd2da046df4590d4670f7"

      def install
        bin.install "google-action-type-importer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/google-action-type-importer/releases/download/v1.0.1/darwin_amd64_v1.0.1.tar.gz"
      sha256 "c214f5e8b6d7b41950731dc1df21e9699e03ee2cdd4b768fd9f94896b82dba03"

      def install
        bin.install "google-action-type-importer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/xavidop/google-action-type-importer/releases/download/v1.0.1/linux_arm64_v1.0.1.tar.gz"
      sha256 "a6af60273074e4debb71eaef18e099c1445b646d134492f5924a65c8b6ed3ebe"

      def install
        bin.install "google-action-type-importer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/google-action-type-importer/releases/download/v1.0.1/linux_amd64_v1.0.1.tar.gz"
      sha256 "c4444f5a15a3609cb11aec36ea8bf67cc80a66b60742c8a3e5d5a187bd2e4c5f"

      def install
        bin.install "google-action-type-importer"
      end
    end
  end
end
