class Nssh < Formula
  desc "SSH wrapper with credential management and session recording"
  homepage "https://github.com/ntwrknrd/nssh"
  license "GPL-3.0-only"
  version "0.2.0"

  on_macos do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.0/nssh_0.2.0_darwin_amd64.tar.gz"
      sha256 "06a50ca124d8c1283c6fbae4da71f94ec3142572849940b69307e684843edc17"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.0/nssh_0.2.0_darwin_arm64.tar.gz"
      sha256 "c232b756271e35abd4caa11fca6ac54e7d77c609e2b0ad7ec5ea83a01108620e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.0/nssh_0.2.0_linux_amd64.tar.gz"
      sha256 "6362fa0e96966667da2ca6f7c893bd2e7a238c92829a8651af4c4679caff906b"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.0/nssh_0.2.0_linux_arm64.tar.gz"
      sha256 "1f0093c608c1bc94e9ee859d12f66657ec75419ea798ee1ae7bee067cba3c6a2"
    end
  end

  def install
    bin.install "nssh"
  end

  test do
    system "#{bin}/nssh", "-V"
  end
end
