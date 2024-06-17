USE Rishi;
	SELECT *
    FROM GoldCus GC
    JOIN Sql_rishi.Man M ON GC.ID=M.MenID;