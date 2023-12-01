watch:
  git ls-files | entr -rc just serve

serve:
  cd backend && cargo run

local-deploy:
  docker build -t mikemehl.com . 
  docker compose up --force-recreate --build --detach --wait

deploy host-file:
  ansible-playbook -i {{host-file}} ./deploy/playbook.yaml

blog-deploy:
  scp -r ./data/blog/* mikemehl@prose.sh:/
