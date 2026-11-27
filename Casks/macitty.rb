cask "macitty" do
  version "1.1.4"
  sha256 "a96c15830dbf63bb69196efcedc1ae41ea38d6cf1b711a8854d12cb4c39babbf"

  url "https://macitty.app/MaciTTY-#{version}.dmg"
  name "MaciTTY"
  desc "Native SSH/SFTP client powered by PuTTY"
  homepage "https://macitty.app/"

  livecheck do
    url "https://macitty.app/VERSION"
    regex(/^(\d+(?:\.\d+)+)\s/)
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MaciTTY.app"

  zap trash: [
    "~/Library/Application Support/MaciTTY",
    "~/Library/Caches/app.macitty.MaciTTY",
    "~/Library/Preferences/app.macitty.MaciTTY.plist",
    "~/Library/Saved Application State/app.macitty.MaciTTY.savedState",
  ]
end
