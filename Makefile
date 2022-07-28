.EXPORT_ALL_VARIABLES:
.PHONY: venv install pre-commit requirements clean

GLOBAL_PYTHON = $(shell py -3.9 -c 'import sys; print(sys.executable)')
LOCAL_PYTHON = .\\.venv\\Scripts\\python.exe
LOCAL_PRE_COMMIT = .\\.venv\\Lib\\site-packages\\pre_commit

setup: venv install pre-commit

venv: $(GLOBAL_PYTHON)
	@echo "Creating .venv..."
	poetry env use $(GLOBAL_PYTHON)

install: ${LOCAL_PYTHON}
	@echo "Installing dependencies..."
	poetry install --no-root --remove-untracked

pre-commit: ${LOCAL_PYTHON} ${LOCAL_PRE_COMMIT}
	@echo "Setting up pre-commit..."
	.\\.venv\\Scripts\\pre-commit install
	.\\.venv\\Scripts\\pre-commit autoupdate

clean:
	if exist .\\.git\\hooks ( rmdir .\\.git\\hooks /q /s )
	if exist .\\.venv\\ ( rmdir .\\.venv /q /s )
	if exist poetry.lock ( del poetry.lock /q /s )
