# RA1-PROLOG -> Sistema Especialista para Recomendação de Trilha Acadêmica

## 🎯 Objetivo
Este projeto é um **sistema especialista em Prolog** que auxilia estudantes de cursos de tecnologia a escolher uma trilha de especialização com base em suas respostas por meio de um questionário interativo.  

O sistema recomenda trilhas acadêmicas e justifica a escolha mostrando quais características do perfil contribuíram para o resultado.

---

## 📂 Estrutura do Projeto
sistema_prolog/
│── sistema.pl # Fatos: trilhas, perfis e perguntas
│── motor.pl # Regras de inferência e cálculo de pontuação
│── main.pl # Interface com o usuário (fluxo do programa)
│── perfil_teste_1.pl # Arquivo de teste: aluno com foco em dados/lógica
│── perfil_teste_2.pl # Arquivo de teste: aluno com foco em desenvolvimento web
│── perfil_teste_3.pl # Arquivo de teste: aluno com foco em redes/infra


---
### ✔️Requisitos
- SWI-Prolog (recomenda-se a versão estável mais recente)
- ou SWISH online (https://swish.swi-prolog.org).

### Instalação (Windows)
1. Baixe o instalador em: página oficial de downloads do SWI-Prolog (https://www.swi-prolog.org/download/devel).  
2. Execute o instalador e marque a opção de adicionar ao `PATH`.  
3. Abra `PowerShell` e rode `swipl` para confirmar a instalação.  

### macOS
```bash
brew install swi-prolog 
```
### ubuntu/debian
```bash
sudo add-apt-repository ppa:swi-prolog/stable
sudo apt update
sudo apt install swi-prolog
```
### Modo interativo
1. Abra o SWI-Prolog na pasta src
```bash
cd trilha_academica
swipl
```
2. ?- consult('sistema.pl').
3. ?- iniciar.
4. Responder às perguntas com "s" ou "n".
5. As trilhas/justificativas serão mostradas.

### Modo de teste (automático)
1. Abra o SWI-Prolog na pasta src
```bash
cd trilha_academica
swipl
```
2. ?- consult('sistema.pl').
3. ?- consult('testes/perfil_teste_1.pl'). 
ou ?- consult('testes/perfil_teste_2.pl').
ou ?- consult('testes/perfil_teste_3.pl').
4. ?- iniciar_test.
5. As trilhas/justificativas serão mostradas.

### Rodar online (sem instalar nada)

Também é possível testar o sistema diretamente no navegador via **SWISH**:

1. Acesse [SWISH](https://swish.swi-prolog.org).
2. Crie um novo programa (New → Program).
3. Copie e cole o conteúdo de `sistema.pl`.
   - Para rodar em modo de teste, cole também o conteúdo de `testes/perfil_teste_X.pl`, logo depois do código de `sistema.pl`.
4. Clique em **Run!** ou execute no console:
   ```prolog
   ?- iniciar.
   ```
   ou para o modo teste:
   ```prolog
   ?- iniciar_test.
   ```
---

## ▶️ Como Executar
### 🔹 Modo Interativo
1. Abra o SWI-Prolog no diretório do projeto.
2. Carregue o programa principal:
   ```prolog
   ?- [main].
3. Inicie o sistema:
   ?- iniciar.
4. Responda às perguntas digitando s (sim) ou n (não)

---

### 🔹 Modo de Teste
1. Carregue a base, motor e um dos perfis de teste:
  ?- [base_conhecimento, motor, perfil_teste_1, main].
2. Execute a recomendação:
  ?- recomenda(R), exibe_resultado(R).

## 📊 Trilhas de Especialização Consideradas
Ciência de Dados;
Inteligência Artificial;
Desenvolvimento Web;
Segurança da Informação;
Redes e Infraestrutura.


## 👨‍💻 Informações
Disciplina: Programação Lógica e Funcional.
Professor: Frank Celho de Alcantara.
Instituição: PUCPR - Pontifícia Universidade Católica do Paraná.


## Integrante:
Nome: Sophia Post Ploposki
Usuário GitHub: sosopost

