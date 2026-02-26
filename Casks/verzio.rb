cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.2"
  sha256 arm:   "0fd2830c995e330f8a8dfcf123f3f049ae558223381931d8887a0a19b49b02fd",
         intel: "68ea4e57c0410bcfb3594d5577f259dc377262db41c554ae85343d640671ebc3"

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
