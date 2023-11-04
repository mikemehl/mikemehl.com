local-deploy:
  docker build -t mikemehl.com . 
  docker compose up --force-recreate --build --detach --wait

deploy:
  #!/usr/bin/env bash
  set -euxo pipefail
  docker build -t mikemehl.com . 
  docker save mikemehl.com -o mikemehl.com.tar.gz
  scp mikemehl.com.tar.gz docker-compose.yml homie:/root
  ssh homie <<EOF
    chmod a+rw /root/mikemehl.com.tar.gz
    docker load -i /root/mikemehl.com.tar.gz
    docker ps -aq | xargs docker rm -f
    docker compose up --force-recreate --build --detach --wait
  EOF

