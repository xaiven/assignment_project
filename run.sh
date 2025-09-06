# Create project folder
mkdir assignment_project && cd assignment_project

# Create Python file
echo 'print("Welcome to Git Assignment")' > main.py

# Initialize Git
git init
git add main.py
git commit -m "Initial commit: add main.py"

git remote add origin https://github.com/xaiven/assignment_project.git
git branch -M main
git push -u origin main

git checkout -b feature/print-date
git add main.py
git commit -m "Add date and time printing"
git push -u origin feature/print-date

git checkout -b feature/print-name
git add main.py
git commit -m "Add name printing"
git push -u origin feature/print-name

git checkout main
git pull origin main   # make sure main is up to date
git checkout feature/print-name
git merge main

git add main.py
git commit -m "Resolve merge conflict between print-name and print-date"
git push

git checkout -b hotfix/print-hello
