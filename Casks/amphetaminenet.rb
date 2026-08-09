cask "amphetaminenet" do
  version "1.0.5"
  sha256 arm: "90902c2af5ec76c92a147d0e2e713cd43534548175352f3dd9ffba7a0b6aab14", intel: "c1fb2d26f28de69e55e7125f7634d5f1450188678e2b2db905cbb398e6c609e1"

  on_arm do
    url "https://github.com/RASLK/AmphetamineNet/releases/download/v1.0.5/AmphetamineNet-1.0.5-macos-arm64.dmg"
  end

  on_intel do
    url "https://github.com/RASLK/AmphetamineNet/releases/download/v1.0.5/AmphetamineNet-1.0.5-macos-intel.dmg"
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
