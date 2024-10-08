# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cxcli < Formula
  desc "The missing CLI for your Dialogflow CX projects"
  homepage "https://cxcli.xavidop.me"
  version "1.231.0"

  on_macos do
    on_intel do
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.231.0/cxcli_Darwin_x86_64.tar.gz"
      sha256 "d4586bef64fea681b111ee19fd33424a4aded0a90ec52934036438598f37a58b"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    on_arm do
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.231.0/cxcli_Darwin_arm64.tar.gz"
      sha256 "fd7c7f584738e4d6d09cf3501be695466a64c3fe20b001123e0dad46445e4998"

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
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.231.0/cxcli_Linux_x86_64.tar.gz"
        sha256 "079c9167b677b06fbfaa917711e233bbfef9f4adb64cfcb1dc17d2062fb0b5f7"

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
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.231.0/cxcli_Linux_armv7.tar.gz"
        sha256 "08274fb1efa0c25f81527916f0d2df3f9490b4693332850b0d8ff4fc634d1f35"

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
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.231.0/cxcli_Linux_arm64.tar.gz"
        sha256 "3d44b8ac94457ed7df8fe0e06c3d0c3e287768ab2930b4f0b0b8fcead59d7d9d"

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
