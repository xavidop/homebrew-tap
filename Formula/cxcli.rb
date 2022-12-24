# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cxcli < Formula
  desc "The missing CLI for your Dialogflow CX projects"
  homepage "https://github.com/xavidop/dialogflow-cx-cli"
  version "1.7.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.2/dialogflow-cx-cli_Darwin_arm64.tar.gz"
      sha256 "dd15c4a6da0fdcb90738bbae1c5f282903344854c6324a088f3182d1810685cc"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.2/dialogflow-cx-cli_Darwin_x86_64.tar.gz"
      sha256 "2ba7cd966bc2d65ded1f27a90a60710b975f9ff934ca276e09d71edb5f589f66"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.2/dialogflow-cx-cli_Linux_armv7.tar.gz"
      sha256 "92412cb0aef7f42984269c014f153321c78db04cec1645a84b05a79412809e0e"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.2/dialogflow-cx-cli_Linux_arm64.tar.gz"
      sha256 "d5e36756e3e226ecb7a020f394a583f8db6870e6fcd2ed5155b3e14bb86c5492"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.2/dialogflow-cx-cli_Linux_x86_64.tar.gz"
      sha256 "420f09d793e2049cd12a2ba36cfb7e7ac237e98606650b44114cf658a98e0d31"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
      end
    end
  end

  test do
    system "#{bin}/cxcli -v"
  end
end
