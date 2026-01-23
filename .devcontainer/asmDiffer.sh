sudo -u muttski bash -s $1<<'EOF'
WORKSPACE="$1"
cd $1/tools
git clone https://github.com/simonlindholm/asm-differ.git
cd asm-differ
python -m venv .
source ./bin/activate
pip install colorama watchdog levenshtein cxxfilt
deactivate
EOF