class Nssh < Formula
  desc "SSH wrapper with credential management and session recording"
  homepage "https://github.com/ntwrknrd/nssh"
  license "GPL-3.0-only"
  version "0.2.3"

  on_macos do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.3/nssh_0.2.3_darwin_amd64.tar.gz"
      sha256 "35fc47e0f322b426ed43a460adedaf43a54c718cf4adbb36180797612a0a30af"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.3/nssh_0.2.3_darwin_arm64.tar.gz"
      sha256 "e8ca145b868b4b7688315623d640c9f76804ca786b23b68404dd0292887d6021"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.3/nssh_0.2.3_linux_amd64.tar.gz"
      sha256 "006af084bb317977c28f429f90764f097a0951ec6847481d7fa62bbfdf467d82"
    end
    on_arm do
      url "https://github.com/ntwrknrd/nssh/releases/download/v0.2.3/nssh_0.2.3_linux_arm64.tar.gz"
      sha256 "d7e93bec87c6080e607669c37a5569ce0361451d7bfed6bd7f0b60b37e5f11aa"
    end
  end

  def install
    bin.install "nssh"
  end

  test do
    system "#{bin}/nssh", "-V"
  end
end
