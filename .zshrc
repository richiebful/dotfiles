# User configuration

venv-use-existing(){
    GIT_ROOT=$(git rev-parse --show-toplevel)
    . $GIT_ROOT/.venv/bin/activate
    pip install -r $GIT_ROOT/requirements.txt
}

venv-initialize(){
    python3 -m venv .venv
}

git-delete-branch(){
    git branch -d $1
    git push origin --delete $1
}

alias weather="curl wttr.in"
alias l='ls -l'

export PATH="/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH="/Users/richardfulop/Library/Python/3.8/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
export PATH="$HOME/.gem/ruby/3.0.3/bin:$PATH"
export PATH="/opt/homebrew/opt/node@16/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
export FPATH="$HOME/.zshfunctions:$HOME/.oh-my-zsh/lib"
export CGO_CFLAGS="-I/opt/homebrew/Cellar/unixodbc/2.3.9_1/include/"
export CGO_LDFLAGS="-L/opt/homebrew/Cellar/unixodbc/2.3.9_1/lib/"
export DBT_ADLS_NAME=npeaadlsg2
export DBT_ENV_NAME=dev
export DBT_TEST_SEVERITY=warn
export ENV=dev

autoload dbt-format
