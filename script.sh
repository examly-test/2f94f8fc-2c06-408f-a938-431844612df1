if [ -f /home/coder/project/workspace/.gitignore ]; then echo "node_modules/" >> .gitignore ; else touch .gitignore && echo "node_modules/" >> .gitignore ; fi && echo "git ignore file created " && git add -A && git commit -m "Backup Branch before deleting" && echo "Lines are commited " && if [ ! "`git branch --list backup-b49de6eb-a3ff-4ed9-9bda-22104743ffa7`" ]; then  echo " branch is not created  " && git branch backup-b49de6eb-a3ff-4ed9-9bda-22104743ffa7 Akash-23 ; fi && echo "branch creation end" && echo "back up branch created - push start" && git push origin backup-b49de6eb-a3ff-4ed9-9bda-22104743ffa7 --force && echo "Push completed success fully" && id -u coder  &>/dev/null || adduser --disabled-password --gecos '' coder && chown -W coder /home/coder/project/workspace/