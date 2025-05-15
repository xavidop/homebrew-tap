require "language/node"

class Genkit < Formula
  desc "Firebase Genkit CLI"
  homepage "https://github.com/firebase/genkit"
  url "https://registry.npmjs.org/genkit-cli/-/genkit-cli-1.9.0.tgz"
  sha256 "66341a6b76a0cbd3afc0e0d3af99a718d703a51acaa95e43cfccffa6c10ef6e6"
  version "1.9.0"

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
