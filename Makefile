SWIFT_BUILD_PRODUCT=swift build -c release --product
SWIFT_RUN=swift run -c release

PHONY: build-proto-bin
build-proto-bin:
	$(SWIFT_BUILD_PRODUCT) protoc-gen-swift
	$(SWIFT_BUILD_PRODUCT) protoc-gen-grpc-swift

PHONY: run-swiftlint
run-swiftlint:
	$(SWIFT_RUN) swiftlint lint Sources

PHONY: run-swiftformat
run-swiftformat:
	$(SWIFT_RUN) swiftformat --lint Sources

PHONY: run-swiftgen
run-swiftgen:
	$(SWIFT_RUN) swiftgen
