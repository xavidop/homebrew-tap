# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cxcli < Formula
  desc "The missing CLI for your Dialogflow CX projects"
  homepage "https://cxcli.xavidop.me"
  version "1.213.0"

  on_macos do
    on_intel do
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.213.0/cxcli_Darwin_x86_64.tar.gz"
      sha256 "cba01b9637034aa94e3731077b6e5f8581e6516a1ddd1d6082ea4a4436367790"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    on_arm do
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.213.0/cxcli_Darwin_arm64.tar.gz"
      sha256 "594f326fdd2cbb30133e9a5ae5cc5fe4cb52e416281045f2c402f8b424e5362f"

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
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.213.0/cxcli_Linux_x86_64.tar.gz"
        sha256 "11bd0c27a562a3786631ac7f13d1d1ee53a96bb6a6c6db28a8be0c197a782696"

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
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.213.0/cxcli_Linux_armv7.tar.gz"
        sha256 "f989a414569e5defb119fcc916c9c0f11ce9b0e7055230ea99728838d0a80008"

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
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.213.0/cxcli_Linux_arm64.tar.gz"
        sha256 "6af00c7b2e8cf98ad544fc5355a1b9a9b69ea45a85b7e05b4f6cf3b9d5de9cf0"

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
