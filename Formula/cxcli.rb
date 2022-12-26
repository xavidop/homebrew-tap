# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cxcli < Formula
  desc "The missing CLI for your Dialogflow CX projects"
  homepage "https://cxcli.xavidop.me"
  version "1.7.21"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.21/cxcli_Darwin_x86_64.tar.gz"
      sha256 "4c1da92b4e34137d0448087e24b9cbe7bf07fef0d99193c642460590de1316db"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.21/cxcli_Darwin_arm64.tar.gz"
      sha256 "8778fe8ce46b62f3cb519337ba8f4aa103e4a86be4b023ec00a22a2d3ad97214"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.21/cxcli_Linux_arm64.tar.gz"
      sha256 "b632353f5e2ed3dc889206d826902302555b4e8b8fae1b021b4ffa90123c9d18"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.21/cxcli_Linux_x86_64.tar.gz"
      sha256 "a5de4f695b0213a40a297cba596f16c22ddbcc8a18c5fa8f15b061a52946a827"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.21/cxcli_Linux_armv7.tar.gz"
      sha256 "dcdc6735c9c5f712cae0fe97c0bf0bf729e69857f8f7a7b3d146847cbfa2a3e6"

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
