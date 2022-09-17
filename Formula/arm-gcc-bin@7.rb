class ArmGccBinAT7 < Formula
  desc "Pre-built GNU toolchain for Arm Cortex-M and Cortex-R processors"
  homepage "https://developer.arm.com/open-source/gnu-toolchain/gnu-rm"
  url "https://developer.arm.com/-/media/Files/downloads/gnu-rm/7-2018q2/gcc-arm-none-eabi-7-2018-q2-update-mac.tar.bz2"
  sha256 "c1c4af5226d52bd1b688cf1bd78f60eeea53b19fb337ef1df4380d752ba88759"
  version "7-2018-q2-update"

  revision 2

  bottle do
    root_url "https://github.com/unspoken/homebrew-arm/releases/download/arm-gcc-bin@7-7-2018-q2-update"
    sha256 cellar: :any_skip_relocation, monterey: "f8684bed52936e7cd80001e388417cdb5ed978d3c474d4bef91c66e168ee79fb"
  end
  
  keg_only <<~EOS
      it may interfere with another version of arm-gcc-bin.
      This is useful if you want to have multiple versions installed
  EOS

  def install
    bin.install Dir["bin/*"]
    prefix.install Dir["arm-none-eabi", "lib", "share"]
  end
end
