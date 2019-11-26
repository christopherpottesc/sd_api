# Sistema de gerenciamento de Escritório de Arquitetura
O projeto foi desenvolvimento para automatizar, centralizar dados e informações de um escritório de Arquitetura especifíco.


## Estrutura
* Servidor - Ruby on Rails
* Cliente - VueJs + Nuxt + Vuetify
* App - React Native


### Api
Nesta seção consta as informações sobre a API desenvolvida

#### Pré-requisitos para rodar API
* Ruby version ≥ 2.3
* Rails version ≥ 5
* MySQL

#### Tecnologias e recursos utilizados:
* Rails 5.0.5.7 - link para documentação: https://rubyonrails.org/
* Ruby 2.3.1p112 - "Uma linguagem dinâmica, open source com foco na simplicidade e na produtividade. Tem uma sintaxe elegante de leitura natural e fácil escrita." - link para documentação: https://www.ruby-lang.org/pt/
* Banco de dados MySQL
* Além de algumas Gems, entre elas, "Faker", utilizada para população do banco.

Como instalar/utilizar as gems: 
Adicionar: gem 'mysql2', '>= 0.3.18', '< 0.5' ao arquivo Gemfile
Adicionar: gem 'faker' ao arquivo Gemfile
E depois rodar o comando "bundle install" no terminal, no mesmo nível do arquivo Gemfile
Link para documentação da Gem Faker: https://github.com/faker-ruby/faker


##### A API seria desenvolvido com Laravel + PHP, devido a inumeros problemas com o CORS, foi desenvolvida com RubyOnRails

O problema foi fácilmente contornado, abaixo segue explicação:
1º passo, adicionando o trecho de código abaixo, no arquivo: config/application.rb, dentro da class 'Application'

```
config.action_dispatch.default_headers = {
  'Access-Control-Allow-Origin' => '*'
}
```

2º passo, adicionando o seguinte trecho de código, no arquivo: config/initializers/cors.rb:
```
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
   origins '*'
  
   resource '*',
    headers: :any,
    methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
```

### Cliente
Uma dashboard administrativa onde o admin, irá cadastrar seus funcionários, clientes, demandas, ordens de serviços e acompanhar receitas.

#### Tecnologias utilizadas:
* Vue.js - Linguagem javascript para aplicações cliente, "É uma estrutura progressiva para a construção de interfaces com o usuário." - link para documentação: https://vuejs.org/v2/guide/
* Nuxt - "O Nuxt é uma estrutura projetada para fornecer uma arquitetura sólida, seguindo as diretrizes oficiais do Vue" - link para documentação: https://nuxtjs.org/guide/installation
* Vuetify - Framework de componentes para Vue. "O objetivo do projeto é fornecer aos usuários tudo o que é necessário para criar aplicativos da Web ricos e atraentes usando a especificação Material Design" - link para documentação: https://vuetifyjs.com/en/introduction/why-vuetify

#### Pré-requisitos para rodar o Cliente


### APP 
Nesta seção consta as informações do APP

#### Objetivo do APP
O principal objetivo é facilitar a visualização das Ordens de serviços que o Escritório tem a cumprir. O segundo é facilitar o contato com o responsável pelo imóvel, o app dispoẽ de uma feature que envia mesangens para o número do whatsapp do responsável (claro, se o mesmo for cadastrado no whatsapp), assim encurtando o tramite de agendamento de vistoria.

#### Tecnologias utilizadas:
* React Native - Framework para desenvolvimento de Apps nativos, tanto para Android quanto IOS, no projeto iremos trabalhar apenas com Android. Link para documentação: https://facebook.github.io/react-native/

## Licença
MIT License

Copyright (c) [2019] [Christopher Pottes Carnal]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Contrubuições:
1. Fork o projeto (https://github.com/christopherpottesc/sd_api/fork)
2. Crie uma nova branch com o nome da feature (git checkout -b feature/fooBar)
3. Confirme suas alterações (git commit -am 'Add some fooBar')
4. Empurre as modicações para o branch (git push origin feature/fooBar)
5. Crie um novo Pull Request

## Autoria:
Nome: Christopher Pottes Carnal
|
Graduando em Análise e Desenvolvimento de Sistemas - Faculdade Senac Pelotas



