ENV_FILE := .env

run:
	@echo "Running in dev mode..."
	flutter run --dart-define-from-file=$(ENV_FILE)

build:
	@echo "Building release apk..."
	flutter build apk --dart-define-from-file=$(ENV_FILE)
