# Livraria Inteligente

**Engenharia de dados com Python, PostgreSQL e consultas em linguagem natural.**

Projeto educacional que transforma um catálogo de livros em uma base para análise. Integra coleta por scraping, transformação em SQL, métricas de negócio e uma interface que apresenta as consultas geradas e os resultados do banco.

[Transformações SQL](sql/) · [Regras de negócio](CONTEXTO.md) · [Guia de execução](docs/execucao.md)

## Problema de negócio

Como organizar preços, disponibilidade e avaliações para explorar um catálogo de forma consistente?

## Entregas

| Entrega | Aplicação |
| --- | --- |
| Coleta com Python | Extração de páginas e detalhes de Books to Scrape. |
| Camada bronze | Preservação dos dados originais em JSONB, com identificação da ingestão. |
| Camada prata | Deduplicação por UPC, tipagem e padronização dos campos. |
| Camada ouro | Métricas por livro e agregações por categoria. |
| Agente SQL | Consultas a partir de perguntas em português e regras de negócio como contexto. |
| Interface Streamlit | Visualização da conversa, do SQL e dos dados retornados. |

## Decisões técnicas

- Rastreabilidade por execução e momento da ingestão.
- Deduplicação determinística com função de janela.
- Separação entre tratamento dos dados e métricas de negócio.
- Regras e dicionário de dados documentados.
- Exibição do SQL gerado e dos resultados na interface.

## Perguntas exploradas

- Qual categoria concentra o maior valor em estoque?
- Quantos livros bem avaliados custam menos de £20?
- Como o preço médio varia por faixa de preço?
- Quantos títulos únicos estão disponíveis?

## Tecnologias

Python · SQL · PostgreSQL · Supabase · requests · BeautifulSoup · psycopg · Streamlit · APIs de modelos de linguagem

## Executar

Siga o [guia de execução](docs/execucao.md) para configurar o ambiente e carregar os dados. Depois:

```powershell
python -m streamlit run app_streamlit.py
```

## Contexto

Projeto desenvolvido durante os estudos de Engenharia de Dados com IA. Os dados vêm de um site de treinamento; a conversão demonstrativa de GBP para reais segue a taxa fixa documentada em [CONTEXTO.md](CONTEXTO.md).
