require "language/node"

class Genkit < Formula
  desc "Firebase Genkit CLI"
  homepage "https://github.com/firebase/genkit"
  url "https://registry.npmjs.org/genkit-cli/-/genkit-cli-1.15.0.tgz"
  sha256 "6d08545c28bf8f0bf7f404fe6eff5acbe264aef2b4d834f8bdc2a44f0021ab7c"
  version "1.15.0"

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
