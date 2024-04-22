cask "gnupgosx" do
  version "2.4.5"
  sha256 "e924d250adc9b78a4cb72dee34e9c4d40b4c3c281aee80fcc43366de1a9cc61a"

  url "https://downloads.sourceforge.net/gpgosx/GnuPG-#{version}.dmg"
  name "GnuPG for OS X / macOS"
  desc "GNU Privacy Guard distribution"
  homepage "https://sourceforge.net/projects/gpgosx/"

  livecheck do
    url "https://sourceforge.net/p/gpgosx/activity/feed"
    regex(%r{url=.*?/GnuPG[._-]((\d+[._-])*\d+)\.dmg}i)
  end

  pkg "Install.pkg"

  uninstall pkgutil: "net.sourceforge.gpgosx"
end
