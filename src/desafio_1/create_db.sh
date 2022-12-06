#!/bin/sh




sqlite3 desafio_engenheiro.db "CREATE TABLE 'cliente' (
	'cliente_id'	INTEGER NOT NULL,
	'nome'	TEXT NOT NULL,
	PRIMARY KEY('cliente_id' AUTOINCREMENT)
);"

echo "[INFO] Tabela de cliente criada"

# Criando Tabela de contratos
sqlite3 desafio_engenheiro.db "CREATE TABLE 'contrato' (
	'contrato_id'	INTEGER NOT NULL,
	'ativo'	INTEGER NOT NULL,
	'percentual'	NUMERIC NOT NULL,
	'cliente_id'	INTEGER NOT NULL,
	PRIMARY KEY('contrato_id' AUTOINCREMENT),
	FOREIGN KEY('cliente_id') REFERENCES 'cliente'('cliente_id')
);"

echo "[INFO] Tabela de contrato criada"

# Criando Tabela de transacoes
sqlite3 desafio_engenheiro.db "CREATE TABLE 'transacao' (
	'transacao_id'	INTEGER NOT NULL,
	'contrato_id'	INTEGER NOT NULL,
	'valor_total'	NUMERIC NOT NULL,
	'percentual_desconto'	NUMERIC,
	PRIMARY KEY('transacao_id' AUTOINCREMENT),
	FOREIGN KEY('contrato_id') REFERENCES 'contrato'('contrato_id')
);"

echo "[INFO] Tabela de transacao criada"