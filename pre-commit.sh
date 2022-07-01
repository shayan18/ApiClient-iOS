mkdir -p .git/hooks
touch .git/hooks/pre-commit
echo "./build-script.sh" > .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
