from dotenv import load_dotenv
import os

# Carrega as variáveis do arquivo .env.
load_dotenv()

db_host = os.getenv("DB_HOST")
db_user = os.getenv("DB_USER")
db_password = os.getenv("DB_PASSWORD")
api_key = os.getenv("API_KEY")

# Confere se as duas variáveis estão preenchidas.
if db_host and db_user:
    print(f"Conectando em {db_host} com usuário {db_user}")
    print("Credenciais carregadas com sucesso!")
else:
    print("Credenciais não encontradas. Verifique o arquivo .env.")