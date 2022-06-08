@Zimenokk 
/
DB2022
Public
Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights
DB2022/Lab2/Lab2.sql
@DaniilZymenok
DaniilZymenok Add files via upload
Latest commit 17090a6 on 12 May
 History
 1 contributor
356 lines (254 sloc)  19.2 KB
-- //Зброя та регіони її надходження
  
--Вибрати всі записи з таблиці "weapons" 1 (ALL)
--SELECT * FROM weapons

-- Вибрати лише одне поле weapon_name з таблиці weapons 2 (ONE_F)
--select weapon_name from weapons

-- Вибрати два поля(weapon_name, weapon_region) з таблиці weapons 3 (MORE THAN 1 F)
-- select weapon_name, weapon_region from weapons

-- Вибрати лише унікальні дані weapon_name з таблиці weapons 4 (ALL_F, DISTINCT)
--select DISTINCT * from weapons

-- Вибрати лише унікальні дані weapon_name з таблиці weapons 5 (ONE_f, DISTINCT)
-- select DISTINCT weapon_name from weapons

-- select DISTINCT weapon_name, weapon_region from weapons

--select * from weapons where weapon_region = 'Britain/London';

--Вибрати з таблиці "weapons" одне поле(weapon_name)з регіоном 'Britain/London' 8  (ONE_F, WHERE)
--select weapon_name from weapons where weapon_region = 'Britain/London';

--select weapon_name, weapon_region from weapons where weapon_region = 'Britain/London';

--Вибрати з таблиці "weapons" всі записи(всі поля) з регіоном не 'Britain/London' 10 (ALL_F, WHERE, NOT)
--select * from weapons where not weapon_region = 'Britain/London';

--Вибрати з таблиці "weapons" одне поле(weapon_name)з регіоном не 'Britain/London' 11  (ONE_F, WHERE, NOT)
--select weapon_name from weapons where not weapon_region = 'Britain/London';

--select weapon_name, weapon_region from weapons where not weapon_region = 'Britain/London';

--Вибрати з таблиці "weapons" всі записи(всі поля) з weapon name MPSEVEN і з регіоном 'Britain/London' 13 (ALL_F, WHERE, AND)
--select * from weapons where weapon_region = 'Britain/London' and weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" всі записи з weapon name MPSEVEN або з регіоном 'Britain/London' 14 (ALL_F, WHERE, OR)
--select * from weapons where weapon_region = 'Britain/London' or weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" всі записи(всі поля) з weapon name MPSEVEN і з регіоном 'Britain/London' 15  (ALL_F, NOT AND)9
--select * from weapons where not weapon_region = 'Britain/London' and weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" всі записи(всі поля) з weapon name MPSEVEN і з регіоном 'Britain/London' 16  (All_F, AND NOT)9
--select * from weapons where weapon_region = 'Britain/London' and not weapon_name = 'MPSEVEN';

--select * from weapons where not weapon_region = 'Britain/London' and not weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" всі записи з weapon name MPSEVEN або з регіоном 'Britain/London' 18 (ALL_F, NOT OR))
--select * from weapons where not weapon_region = 'Britain/London' or weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" всі записи з weapon name MPSEVEN або з регіоном 'Britain/London' 19 (ALL_F, OR NOT)
--select * from weapons where weapon_region = 'Britain/London' or not weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" всі записи з weapon name MPSEVEN або з регіоном 'Britain/London' 20 (ALL_F, NOT OR NOT OR)
--select * from weapons where not weapon_region = 'Britain/London' or not weapon_name = 'MPSEVEN';

--select weapon_name from weapons where weapon_region = 'Britain/London' and weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" одне поле з weapon name MPSEVEN або з регіоном 'Britain/London' 22 (ONE_F, WHERE, OR)
--select weapon_name from weapons where weapon_region = 'Britain/London' or weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" одне поле з weapon name MPSEVEN і з регіоном 'Britain/London' 23  (ONE_F, NOT AND)9
--select weapon_name from weapons where not weapon_region = 'Britain/London' and weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" одне поле з weapon name MPSEVEN і з регіоном 'Britain/London' 24 (ONE_F, AND NOT)9
--select weapon_name from weapons where weapon_region = 'Britain/London' and not weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" одне поле з weapon name MPSEVEN і з регіоном 'Britain/London' 25 (ONE_F, NOT AND NOT)9
--select weapon_name from weapons where not weapon_region = 'Britain/London' and not weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" одне поле з weapon name MPSEVEN або з регіоном 'Britain/London' 26 (ONE_F, NOT OR))
--select weapon_name from weapons where not weapon_region = 'Britain/London' or weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" одне поле з weapon name MPSEVEN або з регіоном 'Britain/London' 27 (ONE_F, OR NOT)
--select weapon_name from weapons where weapon_region = 'Britain/London' or not weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" одне поле з weapon name MPSEVEN або з регіоном 'Britain/London' 28 (ONE_F, NOT OR NOT OR)
--select weapon_name from weapons where not weapon_region = 'Britain/London' or not weapon_name = 'MPSEVEN';

--select weapon_name, weapon_region from weapons where weapon_region = 'Britain/London' and weapon_name = 'MPSEVEN';

--select weapon_name, weapon_region from weapons where weapon_region = 'Britain/London' or weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" декілька полів(weapon_name, weapon_region) з weapon name MPSEVEN і з регіоном 'Britain/London' 31 (MORE_THAN_ONE_F, NOT AND)9
--select weapon_name, weapon_region from weapons where not weapon_region = 'Britain/London' and weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" декілька полів(weapon_name, weapon_region) з weapon name MPSEVEN і з регіоном 'Britain/London' 32 (MORE_THAN_ONE_F, AND NOT)9
--select weapon_name, weapon_region from weapons where weapon_region = 'Britain/London' and not weapon_name = 'MPSEVEN';

--select weapon_name, weapon_region from weapons where not weapon_region = 'Britain/London' and not weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" декілька полів(weapon_name, weapon_region) з weapon name MPSEVEN або з регіоном 'Britain/London' 34 (MORE_THAN_ONE_F, NOT OR))
--select weapon_name, weapon_region from weapons where not weapon_region = 'Britain/London' or weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" декілька полів(weapon_name, weapon_region) з weapon name MPSEVEN або з регіоном 'Britain/London' 35 (MORE_THAN_ONE_F, OR NOT)
--select weapon_name, weapon_region from weapons where weapon_region = 'Britain/London' or not weapon_name = 'MPSEVEN';

--select weapon_name, weapon_region from weapons where not weapon_region = 'Britain/London' or not weapon_name = 'MPSEVEN';

--Вибрати з таблиці "weapons" всі поля з weapon name MPSEVEN і з регіоном 'Britain/London' або назвою IG 37 (ALL_F, AND OR WO())
--select * from weapons where weapon_region = 'Britain/London' and weapon_name = 'MPSEVEN' or weapon_name = 'IG';

--select * from weapons where weapon_region = 'Asia/Jakarta' and (weapon_name = 'Nigma Galaxy' or weapon_name = 'PSG.LGS');

--Вибрати найбільший розмір дальності з таблиці "weapon_mates"  39
--Select max(general_price) from weapon_mates;

--Вибрати найменший розмір дальності з таблиці "weapon_mates"  40
--Select min(general_price) from weapon_mates;

--Вибрати найбільший розмір дальності з таблиці "weapon_mates"  41
--Select sum(general_price) from weapon_mates;

--Вибрати найбільший розмір дальності з таблиці "weapon_mates"  42
--Select count(general_price) from weapon_mates;

--Вибрати найбільший розмір дальності з таблиці "weapon_mates"  43
--Select avg(general_price) from weapon_mates;

--Select user_name, enemy_shooting from weapon_mates where enemy_shooting<10;

--Вибрати нікнейми пістолети з рангом нижче або дорівню 25 з "weapon_mates"  45
--Select user_name, enemy_shooting from weapon_mates where enemy_shooting<=25;

--Вибрати нікнейми пістолети з рангом нижче 25 з "weapon_mates"  46
--Select user_name, enemy_shooting from weapon_mates where enemy_shooting>25;

--Вибрати нікнейми пістолети з рангом нижче або дорівнює 25 з "weapon_mates"   47
--Select user_name, enemy_shooting from weapon_mates where enemy_shooting>=25;

--Вибрати нікнейми пістолети з рангом нижче або дорівнює 25 з "weapon_mates"   89
--Select user_name, enemy_shooting from weapon_mates where enemy_shooting>=25 and general_price >100000;

--Вибрати нікнейми пістолети з рангом нижче або дорівнює 25 з "weapon_mates"   90
--Select user_name, enemy_shooting from weapon_mates where enemy_shooting>=25 or general_price >100000;

--Вибрати нікнейми пістолети з рангом нижче або дорівнює 25 з "weapon_mates"   91
--Select user_name, enemy_shooting from weapon_mates where enemy_shooting>=25 and general_price >100000 or general_price > 1000000;

--Вибрати нікнейми пістолети з рангом нижче або дорівнює 25 з "weapon_mates"   92
--Select user_name, enemy_shooting from weapon_mates where enemy_shooting>=25 or (general_price >100000 or general_price > 1000000);

-- SELECT user_name, enemy_shooting  93
-- FROM weapon_mates
-- WHERE weapon_id IS NULL;

-- SELECT user_name, enemy_shooting   94
-- FROM weapon_mates
-- WHERE weapon_id IS NOT NULL;

-- SELECT user_name, enemy_shooting   95
-- FROM weapon_mates
-- WHERE weapon_id IS NULL  AND enemy_shooting < 10;

-- SELECT user_name, enemy_shooting   96
-- FROM weapon_mates
-- WHERE weapon_id IS NOT NULL  OR enemy_shooting <= 20;

--SELECT avg(total_kills), user_name  48
  --FROM weapon_mates
  --GROUP BY user_name
  --HAVING avg(total_kills)>100000;

--Відсортувати зброю за дальністю у порядку спадання  49
--SELECT user_name, enemy_shooting FROM weapon_mates ORDER BY enemy_shooting;

--SELECT user_name, enemy_shooting FROM weapon_mates ORDER BY enemy_shooting DESC;

--Вибрати пістолети за рейтингом, у яких enemy_shooting знаходиться в районі від 10 до 20  51
--SELECT user_name, enemy_shooting FROM weapon_mates
  --WHERE enemy_shooting BETWEEN 10 AND 20;
  
  
--Вибираємо всі рядки які починаються з 'mi'  52
--SELECT * FROM weaponate_roles WHERE role_name LIKE 'mi%'
  
--Вибираємо всі рядки які закінчуються на '%t'   53
--SELECT * FROM weaponate_roles WHERE role_name LIKE '%t'
  
--Вибираємо всі рядки які містять у собі 'f'  54
--SELECT * FROM weaponate_roles WHERE role_name LIKE '%f%'

--SELECT * FROM weaponate_roles WHERE role_name LIKE '__f%'

--SELECT * FROM weaponate_roles WHERE role_name LIKE 's_________%'

--SELECT * FROM weaponate_roles WHERE role_name LIKE 's_________%'

--SELECT * FROM weaponate_roles WHERE role_name LIKE 's%t'

--SELECT weapon_name, weapon_region FROM weapons
--WHERE weapon_name IN ('IG', 'MPSEVEN', 'Virtus PRO');

--SELECT * FROM weapons LIMIT 3;

--SELECT TOP(4) * FROM arenas;  61

--SELECT TOP 50 PERCENT * FROM arenas;  62

--SELECT TOP(4) * FROM arenas 97
--WHERE weapon_name = "IG";

--SELECT * FROM arenas 98
--WHERE weapon_name = "IG";
--FETCH FIRST 3 ROWS ONLY;

--SELECT TOP 50 PERCENT * FROM arenas 99
--WHERE weapon_name = "IG";

--SELECT TOP 50 PERCENT * FROM arenas 100
--WHERE weapon_name = "IG";
--ORDER BY weapon_region;


-- Вибираю стовпці назва країни, регіон, та зброю, доки є збіг за id для таблиць weapon_mates та weapons  63
-- SELECT weapons.weapon_name, weapons.weapon_region, weapon_mates.user_name
-- FROM weapons
-- INNER JOIN weapon_mates ON weapons.id=weapon_mates.weapon_id;

--Вибираю стовпці назва країни, регіон, та зброю, доки є збіг за id для таблиць weapon_mates та weapons та weaponate_roles  64
-- SELECT weapons.weapon_name, weapons.weapon_region, weapon_mates.user_name, weaponate_roles.role_name
-- FROM ((weapons
-- INNER JOIN weapon_mates ON weapons.id=weapon_mates.weapon_id)
-- INNER JOIN weaponate_roles ON weapon_mates.role_id=weaponate_roles.id);

-- Вибираю стовпці назва країни, регіон, та зброю, доки є збіг за id для таблиць weapon_mates та weapons Left join  65
-- SELECT weapons.weapon_name, weapons.weapon_region, weapon_mates.user_name 
-- FROM weapons
-- LEFT JOIN weapon_mates
-- ON weapons.id=weapon_mates.weapon_id;

-- Вибираю стовпці назва країни, регіон, та зброю, доки є збіг за id для таблиць weapon_mates та weapons Right join  66
-- SELECT weapons.weapon_name, weapons.weapon_region, weapon_mates.user_name 
-- FROM weapons
-- RIGHT JOIN weapon_mates
-- ON weapons.id=weapon_mates.weapon_id;

-- Вибираю стовпці назва країни, регіон, та зброю, доки є збіг за id для таблиць weapon_mates та weapons Right join  67
-- SELECT weapons.weapon_name, weapons.weapon_region, weapon_mates.user_name 
-- FROM weapons
-- FULL OUTER JOIN weapon_mates
-- ON weapons.id=weapon_mates.weapon_id
-- ORDER BY weapon_mates.user_name;

-- Створюю набір значень поєднуючи weapon_team_name i weapon_region вибираю унікальні значення  69
-- SELECT weapon_region FROM weapons
-- UNION
-- SELECT weapon_team_name FROM arenas


-- Створюю набір значень поєднуючи weapon_team_name i weapon_region вибираю унікальні значення  70
-- SELECT weapon_region FROM weapons
-- UNION
-- SELECT weapon_team_name FROM arenas
-- ORDER by weapon_region;

-- Створюю набір значень поєднуючи weapon_team_name i weapon_region поєдную усі значення  71
-- SELECT weapon_region FROM weapons
-- UNION ALL
-- SELECT weapon_team_name FROM arenas

-- Створюю набір значень поєднуючи weapon_team_name i weapon_region поєдную усі значення  72
-- SELECT weapon_region FROM weapons
-- UNION ALL
-- SELECT weapon_team_name FROM arenas
-- ORDER by weapon_region;

-- Створюю набір значень поєднуючи weapon_team_name i weapon_region поєдную усі значення  73
-- SELECT weapon_region FROM weapons
-- WHERE weapon_region='Germany'
-- UNION ALL
-- SELECT weapon_team_name FROM arenas

-- SELECT weapon_region FROM weapons  74
-- WHERE weapon_region='Germany'
-- UNION ALL
-- SELECT weapon_team_name FROM arenas
-- WHERE weapon_team_name like 'A%'

-- SELECT weapon_region FROM weapons  75
-- WHERE weapon_region='Germany'
-- UNION ALL
-- SELECT weapon_team_name FROM arenas
-- WHERE weapon_team_name like 'A%'
 
-- SELECT weapon_name  76
-- FROM weapons
-- WHERE EXISTS (SELECT user_name FROM weapon_mates WHERE weapon_mates.weapon_id = weapons.id AND enemy_shooting < 20);

-- SELECT user_name  77
-- FROM weapon_mates
-- WHERE weapon_id= ANY (SELECT id FROM weapons WHERE enemy_shooting = 10);

-- SELECT user_name  78
-- FROM weapon_mates
-- WHERE weapon_id= ALL (SELECT id FROM weapons WHERE enemy_shooting = 10);

-- SELECT * INTO weapon_mates  79
-- FROM weapon_name;

-- SELECT weapon_name, weapon_redion INTO weapon_mates  80
-- FROM weapon_name;

-- SELECT * INTO weapon_mates  81
-- FROM weapon_name
-- Where weapon_region='Britain/London';

-- SELECT * INTO weapon_mates  82
-- FROM weapon_name
-- Where weapon_region LIKE 'A%';

-- SELECT * INTO new_weapons  83
-- FROM weapons
-- WHERE 1 = 0;

-- INSERT INTO weapon_mates  84
-- SELECT * FROM weapons

-- INSERT INTO weapon_mates  85
-- SELECT * FROM weapons
-- Where weapon_region='Britain/London';

 -- INSERT INTO weapon_mates  86
-- SELECT * FROM weapons
-- Where weapon_region LIKE 'A%';

-- INSERT INTO weapon_mates  87
-- SELECT weapon_name, weapon_region FROM weapons
-- Where weapon_region='Britain/London';

-- SELECT weapon_name, weapon_region  88
-- FROM weapons
-- ORDER BY
-- (CASE
--     WHEN weapon_name IS NULL THEN weapon_region
--     ELSE weapon_name
-- END);

© 2022 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
Loading complete
