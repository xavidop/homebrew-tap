# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cxcli < Formula
  desc "The missing CLI for your Dialogflow CX projects"
  homepage "https://cxcli.xavidop.me"
  version "1.228.1"

  on_macos do
    on_intel do
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.228.1/cxcli_Darwin_x86_64.tar.gz"
      sha256 "4c60953ee5324e23e1b13fd0661598d90ff00778fbda8b5341b2e61b4a9de774"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    on_arm do
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.228.1/cxcli_Darwin_arm64.tar.gz"
      sha256 "648a305b295ce7b99047aaa0ec6bf8c5039d41e5b14d00d58d1949e1222c7b08"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.228.1/cxcli_Linux_x86_64.tar.gz"
        sha256 "439645210ce8bbb2172014a743db91dcb8c8d93ca8f4365eef97808758599a2a"

        def install
          bin.install "cxcli"
          bash_completion.install "completions/cxcli.bash" => "cxcli"
          zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
          fish_completion.install "completions/cxcli.fish"
          man1.install "manpages/cxcli.1.gz"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.228.1/cxcli_Linux_armv7.tar.gz"
        sha256 "6028acc7fc222d8449ce8d11d79b0fd5816a23019a804314b0fb47afdbd3092c"

        def install
          bin.install "cxcli"
          bash_completion.install "completions/cxcli.bash" => "cxcli"
          zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
          fish_completion.install "completions/cxcli.fish"
          man1.install "manpages/cxcli.1.gz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.228.1/cxcli_Linux_arm64.tar.gz"
        sha256 "cd02b7b6b882d64c5fabf16335a8bbf45c49c78fe99341753e9cde6fd73b30d5"

        def install
          bin.install "cxcli"
          bash_completion.install "completions/cxcli.bash" => "cxcli"
          zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
          fish_completion.install "completions/cxcli.fish"
          man1.install "manpages/cxcli.1.gz"
        end
      end
    end
  end

  test do
    system "#{bin}/cxcli version"
  end
end
