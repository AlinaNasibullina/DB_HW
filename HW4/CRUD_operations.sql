USE vk;

-- Задание 2

SELECT DISTINCT 
	firstname 
FROM 
	users
ORDER BY firstname;

-- Задание 3

ALTER TABLE profiles 
ADD COLUMN is_active ENUM ('0', '1') DEFAULT '1'; 

/*SELECT 
	birthday,
	timestampdiff(YEAR, birthday, NOW()) AS age
FROM profiles
WHERE timestampdiff(YEAR, birthday, NOW()) < 18;*/

UPDATE profiles 
SET is_active = '0'
WHERE timestampdiff(YEAR, birthday, NOW()) < 18;

-- Задание 4

/*SELECT * FROM messages
WHERE created_at > NOW();*/

DELETE FROM messages 
WHERE created_at > NOW();
