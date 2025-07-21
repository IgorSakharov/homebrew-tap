class ContainerSelector < Formula
  desc "Interactive Docker container selector and command executor"
  homepage "https://github.com/IgorSakharov/container-selector"
  url "https://github.com/IgorSakharov/contaner-selector/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "sha256:f487c175c6dbffaeb1c061e5a56e9e9e63479e591c8b45092ebc35eddd8f1165"  # Replace with actual hash
  license "MIT"
  version "1.0.1"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"container-selector")
  end

  test do
    system "#{bin}/container-selector", "--help"
  end
end
