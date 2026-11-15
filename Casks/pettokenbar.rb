cask "pettokenbar" do
  version "1.25.1"
  sha256 "c3100c3fbf25dd2f534a56a0b777adf2151d6f87758eea7f99731509e7ffb3b8"

  url "https://github.com/hofe7/PetTokenBar/releases/download/v#{version}/PetTokenBar-#{version}.zip"
  name "PetTokenBar"
  desc "Menu bar token tracker and desktop pet"
  homepage "https://github.com/hofe7/PetTokenBar"

  depends_on macos: :sonoma

  app "PetTokenBar.app"

  caveats <<~EOS
    PetTokenBar is ad-hoc signed and is not notarized by Apple.
    macOS may require approval in System Settings → Privacy & Security on first launch.
  EOS
end
