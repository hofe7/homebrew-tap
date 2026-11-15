cask "pettokenbar" do
  version "1.23.4"
  sha256 "90802572dff89a31532346425807c03061069c2951b94a8b738d1581d74c627c"

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
