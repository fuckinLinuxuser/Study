$date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

git add .
git commit -m "$date"
git pull 
git push
