ifneq (,$(wildcard ./.env))
    include .env
    export
endif

WP_CLI=docker-compose run cli wp --allow-root

start:
	docker-compose up -d

configure:
	$(WP_CLI) core install \
		--url=localhost:8080 \
		--title=${SITE_TITLE} \
		--admin_user=${ADMIN_USER} \
		--admin_password=${ADMIN_PASSWORD} \
		--admin_email=${ADMIN_EMAIL}

#	$(WP_CLI) plugin install elementor --activate

#   $(WP_CLI) plugin install https://my.elementor.com/index.php?p=pro&a=download&k=MY_ELEMENTOR_KEY
#	$(WP_CLI) elementor-pro license activate <license-key>