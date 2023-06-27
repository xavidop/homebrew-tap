# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cxcli < Formula
  desc "The missing CLI for your Dialogflow CX projects"
  homepage "https://cxcli.xavidop.me"
  version "1.73.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.73.0/cxcli_Darwin_x86_64.tar.gz"
      sha256 "ac0c39b8970bbbe5fe8abda72f146edd699a2067150ded97ae4be5ba0241b754"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.73.0/cxcli_Darwin_arm64.tar.gz"
      sha256 "f132a07be68ecc2c8d034d827e286c262c1d8a2e894b482758d7da8a7a413376"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.73.0/cxcli_Linux_armv7.tar.gz"
      sha256 "3683dae3e0a64d44bffe6dfe5939814bca7f472bbf5ceaad5656ef93ccdbabc5"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.73.0/cxcli_Linux_x86_64.tar.gz"
      sha256 "71a897a778e4d9e7b45b40cc20f37587106093abcaa0a8ba98efae4f01157f59"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.73.0/cxcli_Linux_arm64.tar.gz"
      sha256 "94d4e0177e279024e9bc8bdbf5d471b6b589cc5104c74460024a1fd2a6694c97"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
  end

  test do
    system "#{bin}/cxcli version"
  end
end
