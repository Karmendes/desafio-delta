#!/bin/sh

# Colocando valores
sqlite3 desafio_engenheiro.db "insert into cliente (nome) values ('Cliente A')"
sqlite3 desafio_engenheiro.db "insert into cliente (nome) values ('Cliente B')"
sqlite3 desafio_engenheiro.db "insert into cliente (nome) values ('Cliente C')"
sqlite3 desafio_engenheiro.db "insert into cliente (nome) values ('Cliente D')"

echo "[INFO] Tabela de cliente preenchida"


sqlite3 desafio_engenheiro.db "insert into contrato (ativo,percentual,cliente_id) values (1, 2, 1)"
sqlite3 desafio_engenheiro.db "insert into contrato (ativo,percentual,cliente_id) values (0, 1.95, 1)"
sqlite3 desafio_engenheiro.db "insert into contrato (ativo,percentual,cliente_id) values (1, 1, 2)"
sqlite3 desafio_engenheiro.db "insert into contrato (ativo,percentual,cliente_id) values (1, 3, 4)"


echo "[INFO] Tabela de contrato preenchida"

sqlite3 desafio_engenheiro.db "insert into transacao (contrato_id,valor_total,percentual_desconto) values (1, 3000, 6.99)"
sqlite3 desafio_engenheiro.db "insert into transacao (contrato_id,valor_total,percentual_desconto) values (2, 4500, 15)"
sqlite3 desafio_engenheiro.db "insert into transacao (contrato_id,valor_total,percentual_desconto) values (1, 57989, 1.45)"
sqlite3 desafio_engenheiro.db "insert into transacao (contrato_id,valor_total,percentual_desconto) values (4, 1, 0)"
sqlite3 desafio_engenheiro.db "insert into transacao (contrato_id,valor_total,percentual_desconto) values (4, 35, null)"

echo "[INFO] Tabela de transacao preenchida"