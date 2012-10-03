require 'formula'

class Tcsh < Formula
  homepage 'http://tcsh.org/Home'
  url 'ftp://ftp.astron.com/pub/tcsh/tcsh-6.18.01.tar.gz'
  mirror 'ftp://ftp.funet.fi/pub/unix/shells/tcsh/tcsh-6.18.01.tar.gz'
  sha256 'd81ca27851f3e8545666399b4bcf25433e602a195113b3f7c73886fef84c9fa8'
  version '6.18.01'


  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end

  def caveats; <<-EOS.undent
    In order to use this build of tcsh as your login shell,
    it must be added to /etc/shells.
    EOS
  end
end
