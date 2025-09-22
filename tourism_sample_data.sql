-- Заполняем справочники
INSERT INTO countries (country_name, visa_required) VALUES
    ('Турция', FALSE),
    ('Египет', TRUE),
    ('Италия', TRUE),
    ('Таиланд', TRUE);

INSERT INTO tour_types (type_name, description) VALUES
    ('Пляжный', 'Отдых на море с проживанием в отеле'),
    ('Экскурсионный', 'Познавательные туры с осмотром достопримечательностей'),
    ('Горнолыжный', 'Активный отдых в горнолыжных курортах');

INSERT INTO customers (first_name, last_name, email, phone) VALUES
    ('Иван', 'Петров', 'ivan.petrov@mail.ru', '+79161234567'),
    ('Мария', 'Сидорова', 'maria.sidorova@gmail.com', '+79037654321');

-- Добавляем туры
INSERT INTO tours (country_id, tour_type_id, title, description, duration_days, base_price) VALUES
    (1, 1, 'Отдых в Анталии', 'Все включено, 5* отель', 7, 45000.00),
    (3, 2, 'Рим - Флоренция - Венеция', 'Экскурсионный тур по Италии', 10, 89000.00),
    (4, 1, 'Пхукет - Паттайя', 'Комбинированный тур по Таиланду', 14, 72000.00);

-- Создаём заказы
INSERT INTO orders (tour_id, customer_id, persons_count, total_amount, status) VALUES
    (1, 1, 2, 90000.00, 'confirmed'),
    (3, 2, 1, 72000.00, 'paid');