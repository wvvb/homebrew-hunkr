class Hunkr < Formula
  desc "Terminal PR review for humans and agents"
  homepage "https://github.com/wvvb/hunkr"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wvvb/hunkr/releases/download/v0.1.0/hunkr_0.1.0_darwin_arm64.tar.gz"
      sha256 "b612436bea197b7f82415881495ab1762158a25e7c7d75d8e9bc276953640cff"
    else
      url "https://github.com/wvvb/hunkr/releases/download/v0.1.0/hunkr_0.1.0_darwin_amd64.tar.gz"
      sha256 "c04dcd9104dd40c68046ea85039254b7edc0106028e217296a9938d0fb4b0795"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wvvb/hunkr/releases/download/v0.1.0/hunkr_0.1.0_linux_arm64.tar.gz"
      sha256 "ba0a18e93d7f9e70927bb20e68d09afbf1f2865ad3b96b4fe87d6fcb2ccd0c96"
    else
      url "https://github.com/wvvb/hunkr/releases/download/v0.1.0/hunkr_0.1.0_linux_amd64.tar.gz"
      sha256 "e9ef925670e301be8b71c50dec9c825c3febc0ffa138b6d1149562d351b340da"
    end
  end

  def install
    bin.install "hunkr"
  end

  test do
    system "#{bin}/hunkr", "version"
  end
end
