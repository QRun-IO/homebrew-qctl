# homebrew-qctl

Homebrew tap for the qctl CLI. Contains a single binary-download formula
(`Formula/qctl.rb`) that is rewritten automatically by qctl's release
workflow (`.github/workflows/build.yml` in QRun-IO/qctl, `update-homebrew`
job) on every `v*` tag — do not hand-edit version/sha256 lines except to
hotfix a broken release.

## Knowledge base

- Platform hub: `R:/Git.Local/KofTwentyTwo/second-brain/knowledge/qqq/qqq-hub.md`
- Repo dossier: `R:/Git.Local/KofTwentyTwo/second-brain/knowledge/qqq/repos/homebrew-qctl.md`
- Reviewed commit: `986d55a481bf` (branch `main`, 2026-07-04)

Known issue recorded in the dossier: formula declares `license "AGPL-3.0"`
while qctl migrated to Apache-2.0 after v0.2.1; the release automation never
updates that field, so it must be fixed manually.
