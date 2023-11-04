tmp_deploy := "/tmp/mikemehl.com"
deploy_host := "homie"
deploy_host_dir := "~"

resume:
  typst compile data/resume.typ

resume-watch:
  typst watch data/resume.typ resume.pdf --open zathura

deploy-test: 
  docker-compose up --build --always-recreate-deps --remove-orphans

deploy-package: build-package
  makeself {{tmp_deploy}} mikemehl.com.run "mikemehl.com Deployment" ./deploy.sh --target /www/mikemehl.com --notemp --needroot --chown
  just clean-temp-dir

deploy: deploy-package
  scp ./mikemehl.com.run {{deploy_host}}:{{deploy_host_dir}}/mikemehl.com.run
  ssh -t {{deploy_host}} "cd {{deploy_host_dir}} && doas ./mikemehl.com.run"

build-package: clean-temp-dir create-temp-dir
  cd {{tmp_deploy}} && git --git-dir=/dev/null clone {{justfile_directory()}} . && rm -rf .git secret
  cd {{tmp_deploy}} && just resume
  cd {{tmp_deploy}} && docker build -t mikemehl.com .
  cd {{tmp_deploy}} && docker save -o backend.tar.gz mikemehl.com 

create-temp-dir:
  mkdir -p {{tmp_deploy}}

clean-temp-dir:
  rm -rf {{tmp_deploy}}
