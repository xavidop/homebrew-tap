require "language/node"

class Genkit < Formula
  desc "Firebase Genkit CLI"
  homepage "https://github.com/firebase/genkit"
  url "https://registry.npmjs.org/genkit-cli/-/genkit-cli-1.3.0.tgz"
  sha256 "6f08bb874986da535224aede628ca0690352ce7a84cbf42a21a5c95f6ea62f15"
  version "1.3.0"

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
