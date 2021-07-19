WP_CLI=docker-compose run cli wp --allow-root

start:
	docker-compose up -d

configure:
	$(WP_CLI) core install \
		--url=localhost:8080 \
		--title="Test" \
		--admin_user=admin1 \
		--admin_password=senha_admin \
		--admin_email=test@test.com