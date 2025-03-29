# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Voiceflow < Formula
  desc "The CLI for your Voiceflow projects"
  homepage "https://voiceflow.xavidop.me"
  version "1.15.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/voiceflow-cli/releases/download/v1.15.0/voiceflow_Darwin_x86_64.tar.gz"
      sha256 "1b2e69736e417796fb899fe9a71c7cf6ff9f1103b48a89448a3314c98fe1dc1e"

      def install
        bin.install "voiceflow"
        bash_completion.install "completions/voiceflow.bash" => "voiceflow"
        zsh_completion.install "completions/voiceflow.zsh" => "_voiceflow"
        fish_completion.install "completions/voiceflow.fish"
        man1.install "manpages/voiceflow.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/xavidop/voiceflow-cli/releases/download/v1.15.0/voiceflow_Darwin_arm64.tar.gz"
      sha256 "fcf65d9d0fb2ff5375684733c9bd38521df656f6a69d18d254625964621213ea"

      def install
        bin.install "voiceflow"
        bash_completion.install "completions/voiceflow.bash" => "voiceflow"
        zsh_completion.install "completions/voiceflow.zsh" => "_voiceflow"
        fish_completion.install "completions/voiceflow.fish"
        man1.install "manpages/voiceflow.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/xavidop/voiceflow-cli/releases/download/v1.15.0/voiceflow_Linux_x86_64.tar.gz"
        sha256 "eaaed90078d4c2b10a48cd1e0e0bd4e375e4f6fe5950261b3d007026124b83f2"

        def install
          bin.install "voiceflow"
          bash_completion.install "completions/voiceflow.bash" => "voiceflow"
          zsh_completion.install "completions/voiceflow.zsh" => "_voiceflow"
          fish_completion.install "completions/voiceflow.fish"
          man1.install "manpages/voiceflow.1.gz"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/xavidop/voiceflow-cli/releases/download/v1.15.0/voiceflow_Linux_armv7.tar.gz"
        sha256 "66f097fedf1fcec3bb7e01f0412d820032db1102e5555caf3a56addf59ce78e9"

        def install
          bin.install "voiceflow"
          bash_completion.install "completions/voiceflow.bash" => "voiceflow"
          zsh_completion.install "completions/voiceflow.zsh" => "_voiceflow"
          fish_completion.install "completions/voiceflow.fish"
          man1.install "manpages/voiceflow.1.gz"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/xavidop/voiceflow-cli/releases/download/v1.15.0/voiceflow_Linux_arm64.tar.gz"
        sha256 "5a06d0b40b72bbf42e429d686d7ff8043b6ab84e4ace0d3907479cbf94d867f6"

        def install
          bin.install "voiceflow"
          bash_completion.install "completions/voiceflow.bash" => "voiceflow"
          zsh_completion.install "completions/voiceflow.zsh" => "_voiceflow"
          fish_completion.install "completions/voiceflow.fish"
          man1.install "manpages/voiceflow.1.gz"
        end
      end
    end
  end

  test do
    system "#{bin}/voiceflow version"
  end
end
