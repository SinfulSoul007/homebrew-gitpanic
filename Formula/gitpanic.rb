class Gitpanic < Formula
  desc "Big friendly buttons for common Git disasters - Terminal CLI"
  homepage "https://github.com/SinfulSoul007/gitpanic-cli"
  url "https://registry.npmjs.org/gitpanic-cli/-/gitpanic-cli-0.1.0.tgz"
  sha256 "placeholder_sha256_will_be_updated_after_npm_publish"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/gitpanic", "--version"
  end
end
