# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cxcli < Formula
  desc "The missing CLI for your Dialogflow CX projects"
  homepage "https://cxcli.xavidop.me"
  version "1.207.0"

  on_macos do
    on_intel do
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.207.0/cxcli_Darwin_x86_64.tar.gz"
      sha256 "b8d22bebc1a1b17d873aa86475bd62fa3cf7a6b61bcd8e79c4950188a6c20176"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    on_arm do
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.207.0/cxcli_Darwin_arm64.tar.gz"
      sha256 "75375f5133fecfc1fe4c395dd9ab54d79698d63a1dff6013e281ca32bbcdb5bc"

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
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.207.0/cxcli_Linux_x86_64.tar.gz"
        sha256 "e63b641ed30aee2bff13c195ce854d361083521139c110ffb512ceedc32c0295"

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
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.207.0/cxcli_Linux_armv7.tar.gz"
        sha256 "a2774ada716f2583318acdca751f77a9794c187592e65a80148c660279b72180"

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
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.207.0/cxcli_Linux_arm64.tar.gz"
        sha256 "95d955d8835af5471863379eb730a2a7e6f2939397708ecb89bf2f8fd8654eb0"

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
