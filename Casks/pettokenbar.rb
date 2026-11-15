cask "pettokenbar" do
  version "1.25.4"
  sha256 "6d0b56eb3013bc752365d5363eee36b2f812965392b1824fae04c54a464a631c"

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
