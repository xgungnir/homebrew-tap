cask "siyuan-ce" do
  arch arm: "-arm64"

  version "3.3.5"

  url "https://github.com/siyuan-community/siyuan/releases/download/v#{version}/siyuan-CE-v#{version}-mac#{arch}.dmg"
  name "SiYuan CE"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-community/siyuan"

  app "SiYuan.app"

  postflight do
    if Hardware::CPU.arm?
      system_command "/usr/bin/xattr",
        args: ["-c", "#{appdir}/SiYuan.app"],
        sudo: false
    end
  end

  zap trash: [
    "~/.config/.siyuan",
    "~/Library/Application Support/SiYuan-Electron",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
