
sqlite3 desafio_engenheiro.db "select a.nome as cliente_nome, sum(c.valor_total * (b.percentual/100.0)) as valor from cliente a
inner join contrato b using (cliente_id) 
inner join transacao c USING (contrato_id)  
group by a.nome"
