deploy:
	scp ./deploy.sh ${READLER_USER_DOMAIN}:.
	ssh ${READLER_USER_DOMAIN} "./deploy.sh"