cask "macitty" do
  version "0.8.1"
  sha256 "d55027672e4d0b53333a213ff46aa90ca349d05ef57865fef503b5fb26194539"

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
