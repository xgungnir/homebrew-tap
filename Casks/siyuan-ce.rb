cask "siyuan-ce" do
  arch arm: "-arm64"

  version "3.1.17"

  url "https://github.com/siyuan-community/siyuan/releases/download/v#{version}/siyuan-CE-v#{version}-mac#{arch}.dmg"
  name "SiYuan CE"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-community/siyuan"

  app "SiYuan.app"

  zap trash: [
    "~/.config/.siyuan",
    "~/Library/Application Support/SiYuan-Electron",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
