# projeto-janio
Projeto para ajudar o colega Janio, na EngSoft2016

Desenvolvido usando Object Pascal, no Lazarus/FreePascal. 


Modelar um banco com 

Cadastro de usuário Sistema:

* Número identificação Usuário do Sistema
Nome Completo
Data Nascimento
Data Validade Acesso
Usuário Ativo (S/N)
Senha Criptografada
Data Cadastro
Data/hora inclusão registro
Data/hora alteração registro

Cadastro de Pessoa Física
* Número Pessoa Física
Nome completo
Data Nascimento
Endereço Completo
Registro Ativo (S/N)
Data/hora inclusão registro
Data/hora alteração registro

Cadastro Documentos de PF (Certidão nascimento, e CNS obrigatório)
*+ Número PF
* Tipo Documento (CPF, RG, CN, etc)
Documento
Data Expedição
Órgão Expeditor
Data Validade
Data/hora inclusão registro
Data/hora alteração registro

Cadastro de Profissional
* Número profissional
* Número PF
* Código Especialidade (+)
Data/hora inclusão registro
Data/hora alteração registro

Cadastro de Especialidades
* Código Especialidade
Nome Especialidade
Sigla Especialidade
Data/hora inclusão registro
Data/hora alteração registro

Agenda Básica
* Data/hora Agenda
* Código especialidade (+)
* Número profissional
Indica presença (S/N)
Data/hora inclusão registro
Data/hora alteração registro


Criar uma aplicação em Delphi4 em 3 camadas (interface, regras de negócios e banco de dados) seguindo os seguintes roteiros:

Tela de login - validação usuário do sistema
Tela principal (menu)
Formulários de manutenção das tabelas básicas
Formulario de cadastro de PF e documentos (mestre/detalhe)
Formulário Agendamento
- Regras:
  * Horário de agendamento: 08 as 11h
  * Intervalo entre agendas: 30 minutos
  * Quantidade de dias a ser agendado: Data corrente + 30 dias
