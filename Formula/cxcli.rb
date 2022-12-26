# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cxcli < Formula
  desc "The missing CLI for your Dialogflow CX projects"
  homepage "https://cxcli.xavidop.me"
  version "1.7.15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.15/cxcli_Darwin_x86_64.tar.gz"
      sha256 "2344b069120f18649f62a9fd4e6d6492209e37f9f02b1c8fb0a0a56be9b756f0"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.15/cxcli_Darwin_arm64.tar.gz"
      sha256 "e31dc2837fe07429b6386bdc55008a5a4251cd99ca27100240a2433e97de8682"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.15/cxcli_Linux_arm64.tar.gz"
      sha256 "d067c0c863cdd17e8261da5e02589dfcf23b418f54a6158c662b7885ee138c53"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.15/cxcli_Linux_armv7.tar.gz"
      sha256 "82ee7e7f3bddf56512e6c75c8a5020e0a709bcf48091cf0984a33902de9fa311"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.15/cxcli_Linux_x86_64.tar.gz"
      sha256 "ab533b8f11113fc11feb44bfa96ddfa95dfc0fdc71f35b68c602b5f47eb705a7"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
      end
    end
  end

  test do
    system "#{bin}/cxcli version"
  end
end
