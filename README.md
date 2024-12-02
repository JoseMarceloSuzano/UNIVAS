# O que é o mini-omni2?

Mini-Omni2 é um modelo omni-interativo. Ele pode entender entradas de imagem, áudio e texto e tem conversas de voz de ponta a ponta com os usuários. Apresentando saída de voz em tempo real, compreensão multimodal omni-capaz e capacidade de interação flexível com mecanismo de interrupção durante a fala.

# Características
✅ Interação multimodal: com a capacidade de entender imagens, fala e texto, assim como o GPT-4o.

✅ Recursos de conversação de fala para fala em tempo real. Não são necessários modelos ASR ou TTS extras, assim como o Mini-Omni.

# Instalar
Crie um novo ambiente conda e instale os pacotes necessários:

conda create -n omni python=3.10
conda activate omni

git clone https://github.com/gpt-omni/mini-omni2.git
cd mini-omni2
pip install -r requirements.txt

# Início rápido
Demonstração interativa

iniciar servidor
NOTA: você precisa iniciar o servidor antes de executar a demonstração streamlit ou gradio com API_URL definido para o endereço do servidor.

sudo apt-get install ffmpeg
conda activate omni
cd mini-omni2
python3 server.py --ip '0.0.0.0' --port 60808

# Execute a demonstração do Streamlit
Você precisa executar o streamlit localmente com o PyAudio instalado.

pip install PyAudio==0.2.14
API_URL=http://0.0.0.0:60808/chat streamlit run webui/omni_streamlit.py

# Teste local

conda activate omni

cd mini-omni2

Teste as amostras de áudio e perguntas predefinidas

python inference_vision.py

# Vídeo de demonstração

https://github.com/user-attachments/assets/4c86d00c-f295-4a56-bf9e-73d1c53aad1c
