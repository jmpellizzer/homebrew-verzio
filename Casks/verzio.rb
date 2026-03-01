cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.5"
  sha256 arm:   "c5210f78350ce328572da49baa3329988a09449a5416e2bcfeb4b909058e76ee",
         intel: "9f395c67e9e3e805875841fdc17b7ba7764c2e3a5e3662e71e631aa0ac9b140a"

  url "https://ztydsycmuuscuepyzvch.supabase.co/storage/v1/object/public/verzio-releases/Verzio-#{arch}.zip"
  name "Verzio"
  desc "Your home for Mac updates"
  homepage "https://verzio.pro"

  depends_on macos: ">= :sonoma"

  app "Verzio.app"

  zap trash: [
    "~/Library/Application Support/Verzio",
    "~/Library/Caches/Verzio",
    "~/Library/Preferences/com.verzio.pro.plist",
  ]
end
