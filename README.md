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

