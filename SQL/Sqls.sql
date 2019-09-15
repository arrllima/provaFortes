
--1. Escreva uma consulta SQL que retorne código de todas as turmas cursadas pelo aluno de código 4 que tiveram seu início nos anos de 2009 e 2010.
   SELECT CODIGO CODIGO_TURMA
     FROM  matriculado m,
           turma t
     WHERE m.turma_id = t.codigo
       AND m.aluno_id = 4
       AND Extract(year FROM t.datainicio) BETWEEN 2009 AND 2010;
	   
--2. Escreva uma consulta SQL que retorne o nome e a nota final dos alunos que foram reprovados em
--   alguma turma ministrada pelo
--   professor 'Francisco Ferreira Chagas'. Veja as definições de 'nota final' e 'aprovação/reprovação' na questão 4.

   SELECT al.NOME NOME_ALUNO,
          ((m.NOTA1 +
            m.NOTA2 +
            m.NOTA3) / 3) as NOTA_FINAL
     FROM matriculado m,
          turma t,
          aluno al,
          professor p
    WHERE t.professor_id = p.codigo
      AND m.turma_id     = t.codigo
      AND al.codigo      = m.aluno_id
      AND UPPER(TRIM(p.nome)) = 'FRANCISCO FERREIRA CHAGAS'
      AND ((m.NOTA1+m.NOTA2+m.NOTA3)/3) < 6; -- Como não havia definição 'aprovação/reprovação' na questão 4, utilizei 6 como criterio para definição Aprovado/reprovado. 

--3. Escreva uma consulta SQL que retorne o nome de todos os professores que nunca ministraram nenhuma disciplina.	  


   SELECT p.Nome professor
    FROM professor p
    LEFT JOIN turma t
    ON P.codigo = t.professor_id
    WHERE t.professor_id IS NULL;
	
--4. Escreva uma consulta SQL que retorne nome do professor, nome da disciplina, data de início e
--   data de término de todas as turmas
--   que não tiveram nenhum aluno matriculado.	

SELECT
       p.Nome        PROFESSOR,
       d.Nome        DISCIPLINA,
       t.datainicio  DATA_INICIO,
       t.datatermino DATA_TERMINO
    FROM
         matriculado m
    RIGHT JOIN TURMA t      ON m.turma_id = t.codigo
    LEFT  JOIN disciplina d ON d.codigo   = t.disciplina_id
    LEFT  JOIN professor p  ON p.codigo   = t.professor_id
    WHERE
        m.turma_id IS NULL;

-- 5. Escreva uma consulta SQL que retorne o código e nome de todos os alunos que já cursaram 
-- uma mesma disciplina pelo menos duas vezes. Informe também o nome da disciplina.


 SELECT a.codigo COD_ALUNO,
        a.nome   NOME_ALUNO,
        d.nome   NOME_DISCIPLIMA
   FROM aluno a,
        disciplina d,
        matriculado m,
        turma t
  WHERE a.CODIGO = m.aluno_id
    AND d.codigo = t.disciplina_id
    AND t.codigo = m.turma_id
   GROUP BY a.codigo,
            a.nome,
            d.nome
   HAVING COUNT(*) > 1;
   
		
		
	