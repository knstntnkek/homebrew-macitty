cask "macitty" do
  version "1.0"
  sha256 "a63e03530354ac1e30ad5036e91e775072fbe757400b66247f18b1111fd3799f"

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
