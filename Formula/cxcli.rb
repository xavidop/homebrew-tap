# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cxcli < Formula
  desc "The missing CLI for your Dialogflow CX projects"
  homepage "https://cxcli.xavidop.me"
  version "1.12.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.12.1/cxcli_Darwin_x86_64.tar.gz"
      sha256 "b6dfa4772be7db6745d7f589db550fea734ea36d7129fa9088bae3eaffb5702f"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.12.1/cxcli_Darwin_arm64.tar.gz"
      sha256 "a191e755f9e9481fa013013d97ca72866c75d5ef8c8bb60c8997a7c11eec649a"

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
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.12.1/cxcli_Linux_armv7.tar.gz"
      sha256 "26a7bc127a65adf00c23412c8ad542021fc776a7842d3f97529250ea3acee880"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.12.1/cxcli_Linux_arm64.tar.gz"
      sha256 "3a1afffdd67272d550f4a81aab73aa9c5e8a16deed62b38c9292ce00d903ac8b"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.12.1/cxcli_Linux_x86_64.tar.gz"
      sha256 "8c74954fd182e9eaf994a7da266551a83e03dfd4ada8955d647f6bb38c645821"

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
