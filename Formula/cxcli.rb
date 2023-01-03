# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cxcli < Formula
  desc "The missing CLI for your Dialogflow CX projects"
  homepage "https://cxcli.xavidop.me"
  version "1.7.28"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.28/cxcli_Darwin_x86_64.tar.gz"
      sha256 "1ae4d9043fee5174040ca85ea87fd4c4ec8ab6157339ef1da11fb9bc25339452"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.28/cxcli_Darwin_arm64.tar.gz"
      sha256 "51a286092149346f1b7f77e5d068baf2adb6b7630acbacec4f5f702aaf99912a"

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
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.28/cxcli_Linux_arm64.tar.gz"
      sha256 "c3d549fc1b125d4ea3a6951535b7c332d8e3c55ec5e88a690765246c0229d3b8"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.28/cxcli_Linux_x86_64.tar.gz"
      sha256 "a73809b28c0fb539a4293997d4becfed2e4b7c297891f21335915884d67d5d91"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.7.28/cxcli_Linux_armv7.tar.gz"
      sha256 "d53dc4ad964bf55aa1033a3e71d607e6bd4c142c7b836b81208eb1e2024038b4"

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
