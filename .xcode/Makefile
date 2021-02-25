# https://macos-defaults.com/xcode/ideadditionalcounterpartsuffixes.html#set-to-viewmodel-view
set:
	defaults write com.apple.dt.Xcode IDEAdditionalCounterpartSuffixes -array-add "ViewModel" "View"
	defaults write com.apple.dt.Xcode IDEAdditionalCounterpartSuffixes -array-add "Router" "Interactor" "Builder" && killall Xcode
read:
	defaults read com.apple.dt.Xcode IDEAdditionalCounterpartSuffixes
clean:
	defaults delete com.apple.dt.Xcode IDEAdditionalCounterpartSuffixes

