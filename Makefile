# サンプルプロジェクトのパス
SAMPLE_DIR=sample
OUTPUT=$(SAMPLE_DIR)/output.pdf

# Typstファイルのビルド
build:
	typst compile $(SAMPLE_DIR)/main.typ $(OUTPUT)

# ビルド生成物の削除
clean:
	rm -f $(OUTPUT)

# ビルドと動作確認
check: build
	@if [ -f "$(OUTPUT)" ]; then \
		echo "Build successful: $(OUTPUT)"; \
	else \
		echo "Build failed."; \
		exit 1; \
	fi
