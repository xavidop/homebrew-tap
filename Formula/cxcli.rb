# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cxcli < Formula
  desc "The missing CLI for your Dialogflow CX projects"
  homepage "https://cxcli.xavidop.me"
  version "1.235.0"

  on_macos do
    on_intel do
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.235.0/cxcli_Darwin_x86_64.tar.gz"
      sha256 "01aa7ec31e270e5867bb1d57c8d19b72fafb204f3ec0ee9898856fc039806b94"

      def install
        bin.install "cxcli"
        bash_completion.install "completions/cxcli.bash" => "cxcli"
        zsh_completion.install "completions/cxcli.zsh" => "_cxcli"
        fish_completion.install "completions/cxcli.fish"
        man1.install "manpages/cxcli.1.gz"
      end
    end
    on_arm do
      url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.235.0/cxcli_Darwin_arm64.tar.gz"
      sha256 "9277307efbf5328a8873e48b2895b46d1801949e308c955b27bdb0c9505fbfa7"

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
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.235.0/cxcli_Linux_x86_64.tar.gz"
        sha256 "d8cfc5519a27d734a0f0704d12f7965196c0e03e12aa49a2c0d316bb36f38e54"

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
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.235.0/cxcli_Linux_armv7.tar.gz"
        sha256 "1ca5a9e6e6a54474feadf137aa7b22117464a0c4a656815c9ec951b64fea1174"

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
        url "https://github.com/xavidop/dialogflow-cx-cli/releases/download/v1.235.0/cxcli_Linux_arm64.tar.gz"
        sha256 "61bbe773982a488ddc1885d0b78bb1e9f13225d50ad20a97a28565b338b58978"

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
