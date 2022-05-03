#!/bin/bash

if [ -x "$(command -v docker)" ]; then

    # command

    cat .env.example .env.postgres > .env

cat >> .env << EOF |

APP_KEYS=`node -e "console.log(require('crypto').randomBytes(16).toString('base64'));"`,`node -e "console.log(require('crypto').randomBytes(16).toString('base64'));"`,`node -e "console.log(require('crypto').randomBytes(16).toString('base64'));"`,`node -e "console.log(require('crypto').randomBytes(16).toString('base64'));"`
API_TOKEN_SALT=`node -e "console.log(require('crypto').randomBytes(16).toString('base64'));"`
ADMIN_JWT_SECRET=`node -e "console.log(require('crypto').randomBytes(16).toString('base64'));"`
JWT_SECRET=`node -e "console.log(require('crypto').randomBytes(16).toString('base64'));"`
EOF

    docker build -t mystrapi:latest .

    docker-compose up -d

else
    echo "Install docker"
    # command
fi