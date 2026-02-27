cask "usql" do
	arch arm: "arm64", intel: "amd64"

	version "0.20.8"

	url "https://github.com/xo/usql/releases/download/v#{version}/usql-#{version}-darwin-#{arch}.tar.bz2",
			verified: "github.com/xo/usql/"
	name "usql"
	desc "Universal command-line SQL client"
	homepage "https://github.com/xo/usql"

	livecheck do
		url :url
		strategy :github_latest
	end

	binary "usql"
end
