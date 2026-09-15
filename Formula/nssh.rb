class Nssh < Formula
  desc "SSH wrapper with credential management and session recording"
  homepage "https://github.com/ntwrknrd/nssh"
  license "GPL-3.0-only"
  version "0.3.2"

  on_macos do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.2/nssh_0.3.2_darwin_amd64.tar.gz"
      sha256 "db808abf221b0753e71c0a7c68fe4bda7be7015b617938e09e64f6eb497608a5"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.2/nssh_0.3.2_darwin_arm64.tar.gz"
      sha256 "50d4e3280bc07325cb46c8db539711d15b6e95a07e205e3f24ec2b5f2f69c14e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.2/nssh_0.3.2_linux_amd64.tar.gz"
      sha256 "0d3e7c9aad9a0308e6342af4eec217cfe26379e47ec8cf453ec4f382da8cc697"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.2/nssh_0.3.2_linux_arm64.tar.gz"
      sha256 "cb62fee7575bb9018d4ac871bbe67d5e174c817e272d9bdf1f62d4343b3392b1"
    end
  end

  def install
    bin.install "nssh", "nssh-askpass"
  end

  test do
    system "#{bin}/nssh", "-V"
    assert_predicate bin/"nssh-askpass", :executable?
  end
end
