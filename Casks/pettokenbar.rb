cask "pettokenbar" do
  version "1.26.1"
  sha256 "0746b0ad5a755c1d0bf3fedf18b3d04f6799ff86bf4b8b779afafd3259ae90b7"

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
