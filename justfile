watch:
  git ls-files | entr -rc just serve

serve:
  cd backend && cargo run

local-deploy:
  docker build -t mikemehl.com . 
  docker compose up --force-recreate --build --detach --wait

deploy +host:
  #!/usr/bin/env bash
  set -euxo pipefail
  docker build -t mikemehl.com . 
  docker save mikemehl.com -o mikemehl.com.tar.gz
  scp mikemehl.com.tar.gz docker-compose.yml {{host}}:/root
  ssh {{host}} <<EOF
    chmod u+rw /root/mikemehl.com.tar.gz
    docker load -i /root/mikemehl.com.tar.gz
    docker ps -aq | xargs docker rm -f
    docker compose up --force-recreate --build --detach --wait
  EOF

blog-deploy:
  scp -r ./data/blog/* mikemehl@prose.sh:/
