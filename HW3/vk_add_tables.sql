DROP TABLE IF EXISTS location;
CREATE TABLE location (
	id SERIAL,
	country VARCHAR(255) NOT NULL,
	state VARCHAR(255),
	locality VARCHAR(255) NOT NULL,
	timezone INT NOT NULL
);
-- в таблице Профиль добавлена связь с таблицей location

DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
	id SERIAL,
	from_user_id BIGINT UNSIGNED NOT NULL,
	to_media_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW(),
	comment_text TEXT NOT NULL,
	
	FOREIGN KEY (from_user_id) REFERENCES vk.users(id),
	FOREIGN KEY (to_media_id) REFERENCES vk.media(id)
);

DROP TABLE IF EXISTS bookmarks;
CREATE  TABLE bookmarks (
	user_id BIGINT UNSIGNED NOT NULL,
	media_id BIGINT UNSIGNED NOT NULL,
	media_type BIGINT UNSIGNED NOT NULL,
	
	FOREIGN KEY (user_id) REFERENCES vk.users(id),
	FOREIGN KEY (media_id) REFERENCES vk.media(id),
	FOREIGN KEY (media_type) REFERENCES vk.media_types(id),
	PRIMARY KEY (user_id, media_id)
);

ALTER TABLE vk.profiles
ADD CONSTRAINT profiles_fk_location
FOREIGN KEY (hometown_id) REFERENCES location(id);
