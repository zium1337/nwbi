touch lab4.sh
git checkout -b beta
git add lab4.sh
git commit -m "add lab4.sh"
git push --set-upstream https://github.com/zium1337/nwbi.git beta
git checkout master
git merge beta
