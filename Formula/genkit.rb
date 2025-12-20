require "language/node"

class Genkit < Formula
  desc "Firebase Genkit CLI"
  homepage "https://github.com/firebase/genkit"
  url "https://registry.npmjs.org/genkit-cli/-/genkit-cli-1.27.0.tgz"
  sha256 "93bd2501b79079214d95ef691f9013c61f5020e99e155b4a302ac679507c43be"
  version "1.27.0"

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
