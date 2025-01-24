# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Voiceflow < Formula
  desc "The CLI for your Voiceflow projects"
  homepage "https://voiceflow.xavidop.me"
  version "1.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xavidop/voiceflow-cli/releases/download/v1.12.0/voiceflow_Darwin_x86_64.tar.gz"
      sha256 "38389846b65437cc272fb6adc66945892c211af0170b78050b16742314a6ad62"

      def install
        bin.install "voiceflow"
        bash_completion.install "completions/voiceflow.bash" => "voiceflow"
        zsh_completion.install "completions/voiceflow.zsh" => "_voiceflow"
        fish_completion.install "completions/voiceflow.fish"
        man1.install "manpages/voiceflow.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/xavidop/voiceflow-cli/releases/download/v1.12.0/voiceflow_Darwin_arm64.tar.gz"
      sha256 "2ed4372b9e07975fcdafdc7c19147922142f24ac746bcd473b1058069bbbd272"

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
        url "https://github.com/xavidop/voiceflow-cli/releases/download/v1.12.0/voiceflow_Linux_x86_64.tar.gz"
        sha256 "3316288d88be967443e082a4987fa405ba168bb016c0dad05ab3ce344c1e1c18"

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
        url "https://github.com/xavidop/voiceflow-cli/releases/download/v1.12.0/voiceflow_Linux_armv7.tar.gz"
        sha256 "bf537d5f28c20c05ac689580931a37142c86012eabc625d40dc87a8e7d9fe89a"

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
        url "https://github.com/xavidop/voiceflow-cli/releases/download/v1.12.0/voiceflow_Linux_arm64.tar.gz"
        sha256 "88f2bf83a64951f764b7421d37fde735524e08c98c7ae102c2bcb901ae5c7732"

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
