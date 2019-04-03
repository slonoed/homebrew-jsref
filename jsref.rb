require "language/node"

class Jsref < Formula
  desc "JavaScript refactoring language server"
  homepage "https://github.com/slonoed/jsref#readme"
  url "https://registry.npmjs.org/@slonoed/jsref/-/jsref-0.6.1.tgz"
  version "0.6.1"
  sha256 "3d8b8a225f3072b9f0227de8620399a6ba57e34db7b72e9259ea9b19fd51496e"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
