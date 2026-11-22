cask "macitty" do
  version "1.1.3"
  sha256 "70327cc5b89ff6632989ee35e34cb7f52bf7c76a06382cf904fd9bcc8f9adf98"

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
