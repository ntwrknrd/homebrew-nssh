class Nssh < Formula
  desc "SSH wrapper with credential management and session recording"
  homepage "https://github.com/ntwrknrd/nssh"
  license "GPL-3.0-only"
  version "0.3.1"

  on_macos do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.1/nssh_0.3.1_darwin_amd64.tar.gz"
      sha256 "d516f64a69513d04050bd0647b8c2d8aac763789f00cf96abeafd66a479a3e82"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.1/nssh_0.3.1_darwin_arm64.tar.gz"
      sha256 "949d5369511e575fec62b0a1e26fec3cfbea46bd42c1d08cb1117ddfd4415f9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.1/nssh_0.3.1_linux_amd64.tar.gz"
      sha256 "de23caa92639f810e6f98f7f247df0fe8c66b1dacd4310aee2db97e60d4ab64f"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.1/nssh_0.3.1_linux_arm64.tar.gz"
      sha256 "e63d4a40a97eb9d9bf30439e629f5c9a2d5e7950e8b94d35b5bf51e7b2e280a0"
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
