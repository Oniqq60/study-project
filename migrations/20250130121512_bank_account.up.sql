CREATE TABLE bank_accounts ( 
    uuid UUID PRIMARY KEY DEFAULT gen_random_uuid(),              
    bic VARCHAR(255) NOT NULL,                                     
    bank VARCHAR(255) NOT NULL,                                    
    address VARCHAR(255) NOT NULL,                                 
    payment_account VARCHAR(255) NOT NULL,                         
    correspondent_account VARCHAR(255) NOT NULL,                   
    currency VARCHAR(255) NOT NULL,                                
    comment VARCHAR(255),                                          
    created_at TIMESTAMP NOT NULL DEFAULT now(),                   
    updated_at TIMESTAMP NOT NULL DEFAULT now(),                   
    deleted_at TIMESTAMP,                                          
    legal_entity_id UUID NOT NULL,  -- Добавляем внешний ключ
    CONSTRAINT fk_legal_entity FOREIGN KEY (legal_entity_id) REFERENCES legal_entities(uuid) ON DELETE CASCADE
);