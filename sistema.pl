% sistema.pl
% Fatos: Trilhas, perfis e perguntas

% 1. Trilhas
trilha(ciencia_de_dados, 'Análise e interpretação de grandes volumes de dados para extrair conhecimento.').
trilha(inteligencia_artificial, 'Desenvolvimento de sistemas que simulam a capacidade humana de raciocinar e aprender.').
trilha(desenvolvimento_web, 'Criação de sites, aplicações e sistemas que rodam na web, do visual (front-end) à lógica (back-end).').
trilha(seguranca_da_informacao, 'Proteção de sistemas, redes e dados contra ataques e acessos não autorizados.').
trilha(redes_e_infraestrutura, 'Gerenciamento e manutenção de toda a infraestrutura física e lógica que suporta os sistemas.').

% 2. Perfil
% Ciência de Dados
perfil(ciencia_de_dados, matematica_estatistica, 5).
perfil(ciencia_de_dados, raciocinio_logico, 5).
perfil(ciencia_de_dados, visualizacao_dados, 4).
perfil(ciencia_de_dados, curiosidade_negocio, 3).
perfil(ciencia_de_dados, aprendizado_continuo, 3).

% Inteligência Artificial
perfil(inteligencia_artificial, matematica_estatistica, 4).
perfil(inteligencia_artificial, raciocinio_logico, 5).
perfil(inteligencia_artificial, pensamento_abstrato, 4).
perfil(inteligencia_artificial, resolucao_problemas_complexos, 4).
perfil(inteligencia_artificial, etica, 3).

% Desenvolvimento Web
perfil(desenvolvimento_web, raciocinio_logico, 5).
perfil(desenvolvimento_web, design, 4).
perfil(desenvolvimento_web, programacao_frontend, 5).
perfil(desenvolvimento_web, aprendizado_continuo, 4).
perfil(desenvolvimento_web, trabalho_coletivo, 3).

% Segurança da Informação
perfil(seguranca_da_informacao, raciocinio_logico, 5).
perfil(seguranca_da_informacao, investigacao, 4).
perfil(seguranca_da_informacao, trabalho_coletivo, 4).
perfil(seguranca_da_informacao, atencao_detalhes, 5).
perfil(seguranca_da_informacao, etica, 3).

% Redes e Infraestrutura
perfil(redes_e_infraestrutura, problemas_praticos, 5).
perfil(redes_e_infraestrutura, administracao_sistemas, 5).
perfil(redes_e_infraestrutura, habilidade_manual, 4).
perfil(redes_e_infraestrutura, trabalho_coletivo, 4).
perfil(redes_e_infraestrutura, resiliencia, 3).

% 3. Perguntas
pergunta(1,  'Você gosta de matemática e estatística?', matematica_estatistica).
pergunta(2,  'Você gosta de resolver problemas lógicos?', raciocinio_logico).
pergunta(3,  'Você tem interesse em visualizar e interpretar dados?', visualizacao_dados).
pergunta(4,  'Você tem curiosidade em entender o funcionamento de negócios?', curiosidade_negocio).
pergunta(5,  'Você gosta de aprender novas tecnologias constantemente?', aprendizado_continuo).
pergunta(6,  'Você gosta de criar interfaces ou trabalhar com design?', design).
pergunta(7,  'Você gosta de programar para web (HTML, CSS, JavaScript)?', programacao_frontend).
pergunta(8,  'Você gosta de pensar em soluções criativas e abstratas?', pensamento_abstrato).
pergunta(9,  'Você tem interesse em resolver problemas complexos?', resolucao_problemas_complexos).
pergunta(10, 'Você tem facilidade em trabalhar em equipe?', trabalho_coletivo).
pergunta(11, 'Você tem interesse em segurança digital e investigação de falhas?', investigacao).
pergunta(12, 'Você é atento a detalhes?', atencao_detalhes).
pergunta(13, 'Você tem interesse em ética aplicada à tecnologia?', etica).
pergunta(14, 'Você gosta de configurar servidores e redes?', administracao_sistemas).
pergunta(15, 'Você tem facilidade com trabalhos manuais?', habilidade_manual).
pergunta(16, 'Você consegue lidar bem com pressão e problemas urgentes?', resiliencia).
