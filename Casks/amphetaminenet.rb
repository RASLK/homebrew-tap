cask "amphetaminenet" do
  version "1.0.7"
  sha256 arm: "d8b31fea75e266d21a7d4452974a7432c4af2852818f1e8bc2e02c56abac4edf", intel: "03a6a67b09b0fe8bec9517dfaccda95f260f59df33a20912b1a232182158fb7d"

  on_arm do
    url "https://github.com/RASLK/AmphetamineNet/releases/download/v1.0.7/AmphetamineNet-1.0.7-macos-arm64.dmg"
  end

  on_intel do
    url "https://github.com/RASLK/AmphetamineNet/releases/download/v1.0.7/AmphetamineNet-1.0.7-macos-intel.dmg"
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
