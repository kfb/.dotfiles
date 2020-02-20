# The .zprofile file is always loaded on login. Compare to .zshrc, which is
# loaded only in an interactive shell.

# Add some command line tools to the PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/11/bin:$PATH"
