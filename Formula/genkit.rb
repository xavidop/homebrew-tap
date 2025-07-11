require "language/node"

class Genkit < Formula
  desc "Firebase Genkit CLI"
  homepage "https://github.com/firebase/genkit"
  url "https://registry.npmjs.org/genkit-cli/-/genkit-cli-1.14.1.tgz"
  sha256 "e40497640d3cfa7d6be5bd0cec37967467a583165a0c3614baf66637614b7ec6"
  version "1.14.1"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def uninstall
    # Remove symlinks
    rm Dir["#{bin}/genkit"]

    # Remove the package directory
    rm_rf libexec
  end

  test do
    assert_match "genkit", shell_output("#{bin}/genkit --help")
  end
end
