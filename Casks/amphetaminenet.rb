cask "amphetaminenet" do
  version "1.0.6"
  sha256 arm: "ededbe6236636b61043d2cdb0ffb1fa70470583c3ac6d47020975c10b1d4e1f7", intel: "79644ec4e131dc1ad9cedf3958bbe1d34f53e3bcbaf4f8b9c4bb162b3b400515"

  on_arm do
    url "https://github.com/RASLK/AmphetamineNet/releases/download/v1.0.6/AmphetamineNet-1.0.6-macos-arm64.dmg"
  end

  on_intel do
    url "https://github.com/RASLK/AmphetamineNet/releases/download/v1.0.6/AmphetamineNet-1.0.6-macos-intel.dmg"
  end

  name "AmphetamineNet"
  desc "macOS menu bar utility that keeps your Mac awake"
  homepage "https://github.com/RASLK/AmphetamineNet"

  auto_updates true
  app "AmphetamineNet.app"

  postflight do
    system_command "/usr/bin/xattr",
                    args: ["-cr", "#{appdir}/AmphetamineNet.app"],
                    sudo: false
  end
end
