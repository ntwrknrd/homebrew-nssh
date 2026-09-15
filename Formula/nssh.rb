class Nssh < Formula
  desc "SSH wrapper with credential management and session recording"
  homepage "https://github.com/ntwrknrd/nssh"
  license "GPL-3.0-only"
  version "0.3.3"

  on_macos do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.3/nssh_0.3.3_darwin_amd64.tar.gz"
      sha256 "add41cafdc50c9e83cbcaef0df741bccad011f5edf0c07ec057dd38f1d5d659d"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.3/nssh_0.3.3_darwin_arm64.tar.gz"
      sha256 "3307f602cf88fe3ac2f81b53ecae212afee9a3248bf8652c273b4832147c7c43"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.3/nssh_0.3.3_linux_amd64.tar.gz"
      sha256 "47f95e80f5c083ec3a56e789ce48cd2b1d9f604a3f18af12c9c61e729ad298f5"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.3/nssh_0.3.3_linux_arm64.tar.gz"
      sha256 "e70353e03a359298b2501323f9c7dc0f3f7c7fa45801272b4cb88c0814a9ef8d"
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
