#ulimit -n 200000
ulimit -u 2048

# Enable aliases to be sudo’ed
#alias sudo='sudo '

# Register all aliases
for aliasToSource in "${HOME}/.terminal/_aliases/"*; do source "$aliasToSource"; done
# Register all exports
for exportToSource in "${HOME}/.terminal/_exports/"*; do source "$exportToSource"; done
# Register all functions
#for functionToSource in "${HOME}/.terminal/_functions/"*; do source "$functionToSource"; done