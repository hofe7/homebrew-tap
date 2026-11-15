cask "pettokenbar" do
  version "1.25.2"
  sha256 "f4c209e2298d9acad6afcc5516f6d385a7f4a6b32eec8df79cc805a5b1778129"

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
