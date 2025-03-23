source /data/secrets
cat /data/secrets
if [ -z "$CART_HOST" ]; then
  echo Environemnt CART_HOST is missing
  exit 1
fi

if [ -z "$CART_PORT" ]; then
  echo Environemnt CART_PORT is missing
  exit 1
fi


if [ -z "$USER_HOST" ]; then
  echo Environemnt USER_HOST is missing
  exit 1
fi

if [ -z "$USER_PORT" ]; then
  echo Environemnt USER_HOST is missing
  exit 1
fi

if [ -z "$AMQP_HOST" ]; then
  echo Environemnt AMQP_HOST is missing
  exit 1
fi

if [ -z "$AMQP_USER" ]; then
  echo Environemnt AMQP_USER is missing
  exit 1
fi

if [ -z "$AMQP_PASS" ]; then
  echo Environemnt AMQP_PASS is missing
  exit 1
fi

uwsgi --ini payment.ini