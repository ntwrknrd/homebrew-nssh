class Nssh < Formula
  desc "SSH wrapper with credential management and session recording"
  homepage "https://github.com/ntwrknrd/nssh"
  license "GPL-3.0-only"
  version "0.2.2"

  on_macos do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.2/nssh_0.2.2_darwin_amd64.tar.gz"
      sha256 "d4c99eb5eb392cc869be16c4519a36330850f842b41d00ac3bb214fe21276022"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.2/nssh_0.2.2_darwin_arm64.tar.gz"
      sha256 "6b2469998b716118f0d7568f99cd729374b39720fc1559eb4765364dd498742f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.2/nssh_0.2.2_linux_amd64.tar.gz"
      sha256 "087aaeb6bc161026fb3b9a452582f9cea79bc4cc4897d309e19461d95505ab59"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.2/nssh_0.2.2_linux_arm64.tar.gz"
      sha256 "062ac41df2228ecddaf5e30c93d40d2ef325499919aff23277848140d44cb6ea"
    end
  end

  def install
    bin.install "nssh"
  end

  test do
    system "#{bin}/nssh", "-V"
  end
end
