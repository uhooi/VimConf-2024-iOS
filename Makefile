# Variables

# Project
product_name := VimConf2024
workspace_name := $(product_name).xcworkspace
package_name := $(product_name)Package
project_name := VimConf2024

# Test
TEST_SDK := iphonesimulator
TEST_CONFIGURATION := Debug
TEST_PLATFORM := iOS Simulator
TEST_DESTINATION := 'generic/platform=$(TEST_PLATFORM)'

# Targets

.PHONY: setup
setup:
	$(MAKE) open

.PHONY: open
open:
	open ./$(workspace_name)

.PHONY: clean
clean:
	rm -rf ./$(package_name)/.build/

.PHONY: distclean
distclean:
	rm -rf ~/Library/Developer/Xcode/DerivedData
	rm -rf ./$(package_name)/.swiftpm/
	$(MAKE) clean

.PHONY: build-debug
build-debug:
	xcodebuild \
-sdk $(TEST_SDK) \
-configuration $(TEST_CONFIGURATION) \
-workspace $(workspace_name) \
-scheme '$(project_name)' \
-destination $(TEST_DESTINATION) \
-skipPackagePluginValidation \
clean build
