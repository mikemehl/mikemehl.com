deploy_dir := "/tmp/deploy"
deploy_host := "homie"
deploy_host_dir := "~"

deploy-test: copy-deploy-files
  cd {{deploy_dir}} && docker-compose up --build

deploy-package: copy-deploy-files
  makeself {{deploy_dir}} mikemehl.com.run "mikemehl.com Deployment" ./deploy.sh --target /www/mikemehl.com --notemp --needroot --chown

deploy: deploy-package
  scp ./mikemehl.com.run {{deploy_host}}:{{deploy_host_dir}}/mikemehl.com.run
  ssh -t {{deploy_host}} "cd {{deploy_host_dir}} && doas ./mikemehl.com.run"

[private]
copy-deploy-files:
  mkdir -p {{deploy_dir}}
  cp ./backend/target/release/backend {{deploy_dir}}
  cp ./Dockerfile {{deploy_dir}}
  cp ./docker-compose.yml {{deploy_dir}}
  cp ./deploy.sh {{deploy_dir}}
  chmod a+x {{deploy_dir}}/deploy.sh
  chmod a+x {{deploy_dir}}/backend
