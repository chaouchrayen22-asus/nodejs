# COMMANDES.md

- `node --version`, `npm --version`, `git --version` : vérifier les versions installées.
- `git config --global user.name "..."` / `user.email "..."` / `--list` : configurer et vérifier l'identité Git.
- `ssh-keygen -t ed25519 -C "..."` / `ssh -T git@github.com` : générer et tester la clé SSH GitHub.
- `mkdir nodejs && cd nodejs && npm init -y && npm install express` : initialiser le projet Node.js et installer Express.
- `npm start` : lancer le serveur Express (`node server.js`).
- `git init`, `git status`, `git add .`, `git commit -m "..."` : initialiser le dépôt, vérifier l'état et enregistrer les commits.
- `git branch -M main`, `git remote set-url origin ...`, `git remote -v`, `git push -u origin main` : configurer la branche `main` et le dépôt distant puis pousser.
- `mkdir -p .github/workflows && git push` : ajouter et pousser le workflow GitHub Actions.
