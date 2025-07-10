-- +goose Up
CREATE TABLE post_reads (
    id UUID PRIMARY KEY,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    post_id UUID NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
    read_at TIMESTAMP NOT NULL,
    UNIQUE(user_id, post_id)
);

-- +goose Down
DROP TABLE post_reads;
