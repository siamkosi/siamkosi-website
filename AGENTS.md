# Website maintenance

- GitHub mirror: https://github.com/siamkosi/siamkosi-website (private).
- After every requested website edit/update, keep source and dist files in sync, verify the change, commit it, and push HEAD to the github remote main branch. Verify the remote commit matches local HEAD before reporting sync complete.
- Preserve the Sites project ID and use the Sites publishing workflow for deployment. GitHub push alone does not deploy Sites.
- After Sites publication commits source, run ./sync-github.ps1. Do not force push. If authentication or synchronization fails, report the blocker; never claim success.
- Do not commit credentials, environment secrets, temporary archives, or unrelated files.
