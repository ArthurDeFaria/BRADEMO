# Define o .gitignore principal
GITIGNORE_MAIN=".gitignore"

# Limpa o arquivo principal antes de recriar
> "$GITIGNORE_MAIN"

# Para cada subprojeto, adiciona seu .gitignore ao principal
for dir in */ ; do
    if [[ -f "$dir.gitignore" ]]; then
        echo "# Regras do $dir" >> "$GITIGNORE_MAIN"
        cat "$dir.gitignore" >> "$GITIGNORE_MAIN"
        echo -e "\n" >> "$GITIGNORE_MAIN"
    fi
done

echo "Arquivo .gitignore mesclado com sucesso!"
