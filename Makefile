include .env

deploy:
	scp -o "StrictHostKeyChecking no" ./deploy.sh ${READLER_USER_DOMAIN}:.
	scp -o "StrictHostKeyChecking no" ./.env ${READLER_USER_DOMAIN}:.
	ssh -o "StrictHostKeyChecking no" ${READLER_USER_DOMAIN} "./deploy.sh"