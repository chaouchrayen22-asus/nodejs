# CI/CD avec GitHub Actions — Application Node.js

## Questions de synthèse

### 1. Définitions : workflow, job, step et runner
- **Workflow** : pipeline automatisé décrit dans un fichier YAML sous `.github/workflows/` et déclenché par des événements.
- **Job** : ensemble de steps exécutées sur un même runner ; les jobs s'exécutent en parallèle par défaut.
- **Step** : étape individuelle d'un job (exécute une action via `uses` ou une commande shell via `run`).
- **Runner** : machine virtuelle ou conteneur (ex. `ubuntu-latest`) qui exécute les jobs d'un workflow.

### 2. Différence entre `uses` et `run`
- `uses` exécute une action réutilisable (ex. `actions/checkout@v4`).
- `run` exécute directement une commande dans le shell du runner.

### 3. À quoi sert `needs` et comment s'exécutent les jobs sans `needs` ?
- `needs` impose qu'un job attende la réussite d'un ou plusieurs autres jobs avant de démarrer.
- Les jobs sans `needs` n'ont pas de dépendance bloquante et démarrent en parallèle.

### 4. Pourquoi déclencher sur `pull_request` en plus de `push` ?
Cela permet de tester et valider les modifications d'une branche ou d'une PR avant de les fusionner dans `main`.
