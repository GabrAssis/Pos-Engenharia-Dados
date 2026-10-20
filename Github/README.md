# Git e GitHub

Exercícios e projetos das aulas de versionamento, colaboração e organização de repositórios.

## Pastas

| Pasta | Conteúdo |
| --- | --- |
| [pos-ED-GIT](pos-ED-GIT/) | README usado nos exercícios de atualização e versionamento. |
| [Clone](Clone/) | Cópia utilizada nas práticas de clonagem. |
| [projeto-a](projeto-a/) | Pasta de prática com configuração de versão do Python. |
| [projeto-b](projeto-b/) | Pasta de prática com configuração de versão do Python. |
| [projeto-final-modulo-git](projeto-final-modulo-git/) | Projeto de aula com estrutura Python, configuração de dependências e código de exemplo. |
| [projeto-colega](projeto-colega/) | Cópia do projeto final utilizada nas práticas de colaboração. |

Algumas pastas são semelhantes porque fazem parte das simulações realizadas nas aulas.

## Rotina de atualização

Execute os comandos na raiz de `Pos-Engenharia-Dados`.

Antes de começar, com o diretório de trabalho sem alterações pendentes:

```powershell
git pull --ff-only
```

Depois de salvar os arquivos:

```powershell
git status
git add -A
git diff --cached --stat
```

Confira os arquivos preparados e registre o estudo:

```powershell
git commit -m "Git: registra exercícios de branches e merge"
git push
git status --short --branch
```

Adapte a mensagem do commit ao conteúdo alterado.

## Como consultar os exercícios

Abra a pasta desejada no VS Code e leia o README do projeto, quando houver. Os arquivos aqui preservam o conteúdo dos exercícios; o histórico de cada repositório de origem não é incorporado automaticamente ao copiar suas pastas.

[Voltar ao início](../README.md)
