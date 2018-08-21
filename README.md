# projeto-janio
Projeto para ajudar o colega Janio, na EngSoft2016

Desenvolvido usando Object Pascal, no Lazarus/FreePascal. 


Modelar um banco com 

## Cadastro de usuário Sistema:

* _Número identificação Usuário do Sistema_
* Nome Completo
* Data Nascimento
* Data Validade Acesso
* Usuário Ativo (S/N)
* Senha Criptografada
* Data Cadastro
* Data/hora inclusão registro
* Data/hora alteração registro

## Cadastro de Pessoa Física

* _Número Pessoa Física_
* Nome completo
* Data Nascimento
* Endereço Completo
* Registro Ativo (S/N)
* Data/hora inclusão registro
* Data/hora alteração registro

## Cadastro Documentos de PF (Certidão nascimento, e CNS obrigatório)

* _Número PF_
* _Tipo Documento (CPF, RG, CN, etc)_
* Documento
* Data Expedição
* Órgão Expeditor
* Data Validade
* Data/hora inclusão registro
* Data/hora alteração registro

## Cadastro de Profissional

* _Número profissional_
* _Número PF_
* _Código Especialidade (+)_
* Data/hora inclusão registro
* Data/hora alteração registro

## Cadastro de Especialidades

* _Código Especialidade_
* Nome Especialidade
* Sigla Especialidade
* Data/hora inclusão registro
* Data/hora alteração registro

## Agenda Básica

* _Data/hora Agenda
* _Código especialidade (+)
* _Número profissional
* Indica presença (S/N)
* Data/hora inclusão registro
* Data/hora alteração registro


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
