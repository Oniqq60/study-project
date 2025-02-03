CREATE TABLE legal_entities (
    uuid UUID PRIMARY KEY DEFAULT gen_random_uuid(),              -- UUID юридического лица
    name VARCHAR(255) NOT NULL,                                    -- Название юридического лица
    second_name VARCHAR(255),                                      -- Второе название (не обязательно)
    created_at TIMESTAMP NOT NULL DEFAULT now(),                   -- Дата создания
    updated_at TIMESTAMP NOT NULL DEFAULT now(),                   -- Дата обновления
    deleted_at TIMESTAMP                                           -- Дата удаления (если применимо)
);
