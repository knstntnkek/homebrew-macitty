cask "macitty" do
  version "1.0"
  sha256 "4002ad4f2f70ec0bd256ae72a81b6b88b35d896ad8f8f841d5fc736f0fb04bce"

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
