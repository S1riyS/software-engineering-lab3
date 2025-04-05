#!/bin/bash

WILDFLY_PATH="/root/programs/wildfly-preview-34.0.0.Beta1"
DEPLOY_PATH="$(pwd)/build/lab3.war"

if ant build; then
    echo "Deploing..."
    $WILDFLY_PATH/bin/jboss-cli.sh --connect --commands="deploy --force $DEPLOY_PATH"
    echo "Done!"
    exit 0  
fi