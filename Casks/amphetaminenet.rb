cask "amphetaminenet" do
  version "1.0.4"
  sha256 arm: "99e38e05726403c95627f6ced0593e692efc2d2fa8d152c008db55b7b8cad850", intel: "9cb161ef77b13ad84783e69deb7c3ba5b927b288f1d99435a37503d3aa1df78c"

  on_arm do
    url "https://github.com/RASLK/AmphetamineNet/releases/download/v1.0.4/AmphetamineNet-1.0.4-macos-arm64.dmg"
  end

  on_intel do
    url "https://github.com/RASLK/AmphetamineNet/releases/download/v1.0.4/AmphetamineNet-1.0.4-macos-intel.dmg"
  end

  name "AmphetamineNet"
  desc "macOS menu bar utility that keeps your Mac awake"
  homepage "https://github.com/RASLK/AmphetamineNet"

  auto_updates true
  app "AmphetamineNet.app"
end
