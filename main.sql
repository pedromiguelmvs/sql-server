/* Uma equipe de marketing precisa fazer uma pesquisa com os usuários cadastrados,
para isso, estes precisam do nome e sobrenomo de todos os usuários cadastrados.*/

SELECT FirstName, LastName FROM Person.Person;

-- 19,972

/* Quantos sobrenomes únicos nós temos na tabela Person.Person?*/

SELECT DISTINCT LastName FROM Person.Person;

-- 1,206

/* A equipe de produtos precisa dos dados de todos os produtos que tenham o peso
maior que 500kg e menor que 700kg*/

SELECT * FROM Production.Product
WHERE Weight > 500.00
AND Weight < 700.00;

-- 4

/* Foi pedido pelo marketing de uma empresa a relação de todos os empregados
que são solteiros e assalariados */

SELECT * FROM HumanResources.Employee
WHERE MaritalStatus = 'M'
AND SalariedFlag = 1;

-- 28

/* Um usuário chamado Peter Krebs está devendo um pagamento, consiga o email
dele para que seja enviada uma cobrança. */

SELECT * FROM Person.Person
WHERE FirstName = 'Peter'
AND LastName = 'Krebs';

-- BusinessEntityID = 26

SELECT * FROM Person.EmailAddress
WHERE BusinessEntityID = 26;

-- peter0@adventure-works.com

/* A divisão de produtos deseja saber quantos produtos existem cadastrados no
sistema. */

SELECT COUNT(*) FROM Production.Product;

-- 504

/* A divisão de produtos deseja saber quantos tamanhos únicos existem cadastrados
no sistema. */

SELECT COUNT(DISTINCT Size) FROM Production.Product;

-- 127

/* A empresa deseja obter o ProductID dos 10 produtos mais caros cadastrados
no sistema, do mais caro ao mais barato. */

SELECT TOP 10 ProductId FROM Production.Product
ORDER BY ListPrice DESC;

/* Obter o nome e o número do produto dos produtos que tem o ProductId entre 1~4 */

SELECT TOP 4 Name, ProductId FROM Production.Product
ORDER BY ProductId ASC;

-- OU

SELECT Name, ProductId FROM Production.Product
WHERE ProductId > 0
AND ProductId <= 4
ORDER BY ProductId ASC;

