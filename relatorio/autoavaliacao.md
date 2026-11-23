# Autoavaliação Geral
- Descrição(ainda não-oficial) avaliativa de como foram feitas as atividades em Grupo.

## Modelagem:
- Levantamento de requisitos do sistema e Modelagem ER

### Decisão de Tema
- O grupo se reuniu em Call com o intuito de decidir a temática do sistema fictício. Logo de início, todos concordaram que o grupo não buscava algo extremamente genérico, a fim de manter originalidade.
A partir de um anúncio da plataforma Kaggle, decidiu-se modelar o conceito das Benchmarks de modelos de IA para dentro do contexto científico da universidade.

### Diagrama ER
- Logo após a decisão, já fizemos o levantamento de quais seriam as entidades básicas para esse projeto a partir da própria vicência no mundo acadêmico após o BOOM das IA's.

Ademais, criamos uma base descritiva, e cada um colocou suas ideias a mesa formando então o levantamento dos requisitos gerais, que foi a base do diagrama Entidade-Relacionamento.

Levamos como base o conteúdo teórico das aulas de modelagem para executar esse processo.

## Projeto Lógico

### Mapeamento Diagrama ER -> Esquema Relacional
- Inicialmente já foi perceptível que produzir um mapeamento sólido que evita falhas de restrição do olhando para o projeto todo era um tanto quanto difícil. Por isso, dividimos o processo em passos menores para conquistar o resultado esperado, utilizando uma sequência padrão de mapeamento.
1 - Entidades Fortes e seus atributos especiais,
2 - Relacionamentos 1:N (Definição de chaves estrangeiras),
3 - Relacionamentos M:N (criação de tabelas associativas)

### Revisar a Normalização (1FN a 3FN)
- Essa parte foi peculiarmente mais fácil porque durante o próprio mapeamento já utilizamos todos os insights possíveis que foram ensinados como boas práticas, mas por seguir fielmente o material revisamos a assiduidade das formas normais com formalidade.

### Restrições de Integridade
- A partir da primeira base relacional começamos a verificar as restrições de integridade
Integridade Referencial
Integridade de Domínio 
Unicidade

- Essa foi de forma unanime a parte mais complexa dessa etapa, por existir diversas variações possíveis de restrição e implicações a serem analisadas. Sob essa ótica, foi decidido utilizar uma base mais simples de restrições, com as justificativas idealizadas inicialmente, com o intuito de otimizá-la após a implementação do BD com resultados concretos da análise experimental. Entretanto, vale ressaltar que ainda assim o processo de decisão foi tratado com seriedade e abertamente discutido.

## Projeto Físico e Implementação

### Esquema Físico e Criação
- para criar o esquema físico utilizou-se inteiramente o esquema relacional produzido durante o Projeto Lógico, convertendo as tabelas/relacionamentos para a sintaxe do SQL. Nessaa parte, escolheu-se com maior precisão o tamanho e os tipos com foco na economia de espaço, e implementou-se as restrições utilizando comandos LDD.

### Carga inicial de Dados
- A fazer...

### Consultas e Otimização
- Pendente...



###

# Autoavaliação pessoal - Arthur
- A fazer...
// autoavaliação da participação do projeto
// Opnião pessoal sobre erros e acertos