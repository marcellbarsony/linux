# Spaceship Prompt
# https://spaceship-prompt.sh/
# https://github.com/spaceship-prompt/spaceship-prompt

# Prompt order
SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  exec_time     # Execution time
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elm           # Elm section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  gcloud        # Google Cloud Platform section
  venv          # virtualenv section
  conda         # conda virtualenv section
  dotnet        # .NET section
  kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  ibmcloud      # IBM Cloud section
  line_sep      # Line break
  battery       # Battery level and status
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# Prompt
SPACESHIP_PROMPT_ASYNC=true
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true
SPACESHIP_PROMPT_PREFIXES_SHOW=true
#SPACESHIP_PROMPT_SUFFIXES_SHOW=true
SPACESHIP_PROMPT_DEFAULT_PREFIX='via '
#SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "

# Char
#SPACESHIP_CHAR_PREFIX=""
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_CHAR_SYMBOL='>'
#SPACESHIP_CHAR_SYMBOL_ROOT
#SPACESHIP_CHAR_SYMBOL_SECONDARY
SPACESHIP_CHAR_COLOR_SUCCESS=magenta
SPACESHIP_CHAR_COLOR_FAILURE=red
SPACESHIP_CHAR_COLOR_SECONDARY=blue

# Battery
SPACESHIP_BATTERY_SHOW=true
#SPACESHIP_BATTERY_PREFIX
#SPACESHIP_BATTERY_SUFFIX
#SPACESHIP_BATTERY_SYMBOL_CHARGING
#SPACESHIP_BATTERY_SYMBOL_DISCHARGING
#SPACESHIP_BATTERY_SYMBOL_FULL
SPACESHIP_BATTERY_THRESHOLD=10

# Directory
SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_PREFIX=''
#SPACESHIP_DIR_SUFFIX
SPACESHIP_DIR_TRUNC=3
#SPACESHIP_DIR_TRUNC_PREFIX
SPACESHIP_DIR_TRUNC_REPO=true
SPACESHIP_DIR_COLOR=blue
#SPACESHIP_DIR_LOCK_SYMBOL
#SPACESHIP_DIR_LOCK_COLOR

# Execution time
SPACESHIP_EXEC_TIME_SHOW=true
SPACESHIP_EXEC_TIME_PREFIX=''
#SPACESHIP_EXEC_TIME_SUFFIX
SPACESHIP_EXEC_TIME_COLOR=blue
SPACESHIP_EXEC_TIME_ELAPSED=10

# Exit code
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_EXIT_CODE_PREFIX=''
SPACESHIP_EXIT_CODE_SUFFIX=' '
SPACESHIP_EXIT_CODE_SYMBOL=''
SPACESHIP_EXIT_CODE_COLOR=red

# Git
SPACESHIP_GIT_SHOW=true
SPACESHIP_GIT_PREFIX=''
SPACESHIP_GIT_SUFFIX=''
#SPACESHIP_GIT_SYMBOL

# Git branch
SPACESHIP_GIT_BRANCH_SHOW=true
SPACESHIP_GIT_BRANCH_PREFIX=''
SPACESHIP_GIT_BRANCH_SUFFIX=''
SPACESHIP_GIT_BRANCH_COLOR=magenta

# Git status
PACESHIP_GIT_STATUS_SHOW=true
SPACESHIP_GIT_STATUS_PREFIX=' ['
SPACESHIP_GIT_STATUS_SUFFIX='] '
SPACESHIP_GIT_STATUS_COLOR=magenta
SPACESHIP_GIT_STATUS_UNTRACKED='?'
SPACESHIP_GIT_STATUS_ADDED='+'
SPACESHIP_GIT_STATUS_MODIFIED='!'
SPACESHIP_GIT_STATUS_RENAMED='»'
SPACESHIP_GIT_STATUS_DELETED='✘'
SPACESHIP_GIT_STATUS_STASHED='$'
SPACESHIP_GIT_STATUS_UNMERGED='='
SPACESHIP_GIT_STATUS_AHEAD='⇡'
SPACESHIP_GIT_STATUS_BEHIND='⇣'
SPACESHIP_GIT_STATUS_DIVERGED='⇕'

# Host
SPACESHIP_HOST_SHOW="true"
#SPACESHIP_HOST_SHOW_FULL
#SPACESHIP_HOST_PREFIX
#SPACESHIP_HOST_SUFFIX
#SPACESHIP_HOST_COLOR
#SPACESHIP_HOST_COLOR_SSH

# Jobs
#SPACESHIP_JOBS_SHOW
#SPACESHIP_JOBS_PREFIX
#SPACESHIP_JOBS_SUFFIX
#SPACESHIP_JOBS_SYMBOL
#SPACESHIP_JOBS_COLOR
#SPACESHIP_JOBS_AMOUNT_PREFIX
#SPACESHIP_JOBS_AMOUNT_SUFFIX
#SPACESHIP_JOBS_AMOUNT_THRESHOLD

# Lua
# SPACESHIP_LUA_SHOW=true

# Package version
SPACESHIP_PACKAGE_SHOW=true
#SPACESHIP_PACKAGE_PREFIX
#SPACESHIP_PACKAGE_SUFFIX  $SPACESHIP_PROMPT_DEFAULT_SUFFIX
#SPACESHIP_PACKAGE_SYMBOL
#SPACESHIP_PACKAGE_COLOR

# Python
SPACESHIP_PYTHON_SHOW=true
#SPACESHIP_PYTHON_ASYNC
#SPACESHIP_PYTHON_PREFIX
#SPACESHIP_PYTHON_SUFFIX
#SPACESHIP_PYTHON_SYMBOL
#SPACESHIP_PYTHON_COLOR

# Python - Conda virtualenv
#SPACESHIP_CONDA_SHOW
#SPACESHIP_CONDA_PREFIX
#SPACESHIP_CONDA_SUFFIX
#SPACESHIP_CONDA_SYMBOL
#SPACESHIP_CONDA_COLOR
#SPACESHIP_CONDA_VERBOSE

# Rust
#SPACESHIP_RUST_SHOW
#SPACESHIP_RUST_PREFIX
#SPACESHIP_RUST_SUFFIX
#SPACESHIP_RUST_SYMBOL
#SPACESHIP_RUST_COLOR
#SPACESHIP_RUST_VERBOSE_VERSION

# Time
SPACESHIP_TIME_SHOW=false
#SPACESHIP_TIME_PREFIX
#SPACESHIP_TIME_SUFFIX
#SPACESHIP_TIME_COLOR
SPACESHIP_TIME_FORMAT='%D{%L:%M}'
SPACESHIP_TIME_12HR=true

# User
SPACESHIP_USER_SHOW="true"
#SPACESHIP_USER_PREFIX
#SPACESHIP_USER_SUFFIX
#SPACESHIP_USER_COLOR
#SPACESHIP_USER_COLOR_ROOT

# Virtualenv
#SPACESHIP_VENV_SHOW
#SPACESHIP_VENV_PREFIX
#SPACESHIP_VENV_SUFFIX
#SPACESHIP_VENV_SYMBOL
#SPACESHIP_VENV_GENERIC_NAMES
#SPACESHIP_VENV_COLOR