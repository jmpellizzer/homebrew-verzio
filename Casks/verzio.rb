cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.1"
  sha256 arm:   "9780e4a647501252914c2c786318b3715b22ed2560ea3fee24d9626cad34a39d",
         intel: "fd6d6306809fdce293b7fea12a9083740ef9116de9a596990772ceb8ef573d75"

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