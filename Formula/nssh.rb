class Nssh < Formula
  desc "SSH wrapper with credential management and session recording"
  homepage "https://github.com/ntwrknrd/nssh"
  license "GPL-3.0-only"
  version "0.3.0"

  on_macos do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.0/nssh_0.3.0_darwin_amd64.tar.gz"
      sha256 "af13548e892518906c1d272f4478763f735c90fc8694376b9bdcd2673b3d4a1c"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.0/nssh_0.3.0_darwin_arm64.tar.gz"
      sha256 "498911bba85b46347b9dcf12b52261ac3d29833bc1f289ac179c31472393fcdd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.0/nssh_0.3.0_linux_amd64.tar.gz"
      sha256 "14d1f4fd05932516c15cd08e3088eb414a7f7b4e4caf06534a677321c69b50d7"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.3.0/nssh_0.3.0_linux_arm64.tar.gz"
      sha256 "526fa3c521beb512189a187247188ae09dd062645feb305a57204372a7dd6ac9"
    end
  end

  def install
    bin.install "nssh"
  end

  test do
    system "#{bin}/nssh", "-V"
  end
end
