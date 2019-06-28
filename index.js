const restify = require('restify');

const server = restify.createServer({
	name: 'alocacaoDeVagas',
	version: '1.1.0'
});
//conexao do banco
var knex = require('knex')({
	client:'mysql',
	connection:{
		host:'us-cdbr-iron-east-02.cleardb.net',
		user:'b8c2bb6259a631',
		password : '6fedf47a',
    	database : 'heroku_7deca41af8b1164'
	}
});

const errs = require('restify-errors')

//extensoes de uso para acesso ao banco e funcoes restify
server.use(restify.plugins.acceptParser(server.acceptable));
server.use(restify.plugins.queryParser());
server.use(restify.plugins.bodyParser());

//porta de acesso ou buscar pelo process onde pega a porta do servidor heroku
const PORT = process.env.PORT || 7000;

server.listen(PORT, function(){
	console.log('%s listening at %s', server.name, server.url);
});

// mostra tudo
server.get('/', (req, res, next) => {
	console.log('testes');

	knex('alocacoes')
	.select()
	.then((dados) =>{
		if(!dados) return res.send(new errs.BadRequestError('Tem algo errado senhor'));
		res.send(['Escolha abaixo sua opcao de vaga: ',dados]);
	},next)
});

//geral
server.get('/description/:descricao/fulltime/:horas_boolean/location/:localizacao', (req, res, next) => {
	//document.write("Hello World!");
	const { descricao } = req.params;
	const { horas_boolean } = req.params;
	const { localizacao } = req.params;

	knex('alocacoes')
	.where('descricao', 'like', '%'+descricao+'%')
	.andWhere('localizacao','like','%'+localizacao+'%')
	.andWhere('horas_boolean','like','%'+horas_boolean+'%')
	.then((dados) => {
		if(!dados) {
			return res.send(new errs.BadRequestError('Tem algo errado senhor'));
		}
		res.send(dados);
	},next)
});

//pelo codigo
server.get('/positions/:codigo', (req, res, next) =>{
	//document.write("Hello World!");
	const { codigo } = req.params;

	knex('alocacoes').where('codigo',codigo).first()
	.then((dados) => {
		if(!dados) {
			return res.send(new errs.BadRequestError('Tem algo errado senhor'));
		}
		res.send(dados);
	},next)
});