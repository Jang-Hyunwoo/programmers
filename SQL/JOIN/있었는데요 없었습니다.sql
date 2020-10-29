/* ANIMAL_ID로 join한 다음, DATETIME이 ins가 더 큰 것 찾기 
	보호 시작일이 빠른 순으로 조회하기*/
SELECT	I.ANIMAL_ID, I.NAME
FROM	ANIMAL_INS AS I JOIN ANIMAL_OUTS AS O ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE	I.DATETIME > O.DATETIME
ORDER BY I.DATETIME;
