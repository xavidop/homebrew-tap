# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cxcli < Formula
  desc "The missing CLI for your Dialogflow CX projects"
  homepage "https://cxcli.xavidop.me"
  version "1.185.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.185.0/cxcli_Darwin_arm64.tar.gz"
      sha256 "bd945c2fbe3dee7208e7f413636799a3594f2223c72189098a7ce64b24fee73f"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.185.0/cxcli_Darwin_x86_64.tar.gz"
      sha256 "a07652e7f0b1a4d5099e007a0991cd5dffe8fa9243e094e905f63c91ac26e3b5"

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
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.185.0/cxcli_Linux_armv7.tar.gz"
      sha256 "189c182a2d7b17f921f90a4c1a10ae3d75314355ba3842cd24161873954e3c71"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.185.0/cxcli_Linux_x86_64.tar.gz"
      sha256 "afa6f0ae6a1bafd78472ccb85a7f4d6726f30a0a365ccf3f7a4e6a23c5b411c1"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.185.0/cxcli_Linux_arm64.tar.gz"
      sha256 "32ded0f017cd55971bd48e4e846a27cb3ad00e8ad8f89b9735c068c6e88db20b"

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
