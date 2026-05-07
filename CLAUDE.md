# Claude Code — Homelab Docs

## Repo purpose

This repository is the single source of truth for a personal homelab: what systems run, how they were set up, what broke, and what was learned. It contains no code or compose files. All content is Markdown. The goal is durable, searchable, linkable documentation that ages well.

---

## Directory conventions

| Directory | What goes here | Create vs. append |
|---|---|---|
| `docs/systems/` | Stable reference; one file per major system | Create one file per system; revise in place as the system changes |
| `docs/runbooks/` | Procedural step-by-step guides; "when X, do Y" | One file per distinct procedure; revise in place |
| `docs/lessons/` | Incident and learning records; append-only narrative | Create a new dated file for each event; never rewrite past lessons (fix factual errors only) |
| `CHANGELOG.md` | Running log of infrastructure changes | Append new entries at the top only; never edit past entries |
| `reference/` | Environment-wide context: network, DNS, endpoints | Revise in place; one file per domain of concern |

Do not create new top-level directories without asking the user first.

---

## Templates

All new files must be copied from the relevant `_template.md` rather than structured freestyle:

- New system doc → copy `docs/systems/_template.md`
- New runbook → copy `docs/runbooks/_template.md`
- New lesson → copy `docs/lessons/_template.md`

Fill every section. Leave a section blank (`_None yet._`) rather than omitting it.

---

## Required sections — lessons (`docs/lessons/`)

Every lesson file must contain all five sections in this order:

1. **Problem** — what was observed; symptoms; impact
2. **Root cause** — what actually caused it
3. **Resolution** — exact steps taken to fix it
4. **What I'd check first next time** — the one or two fastest diagnostics for this class of failure (mandatory)
5. **References** — links to relevant docs, issues, commits

Filename format: `YYYY-MM-<slug>.md` (e.g. `2026-04-longhorn-disk-pressure.md`).

---

## Required sections — system docs (`docs/systems/`)

Every system doc must contain all seven sections:

1. **Purpose** — what this system does and why it exists in the homelab
2. **Deployment** — how it is deployed (stack, compose file location, host)
3. **Dependencies** — other systems or services it requires
4. **Data locations** — volumes, bind mounts, config paths
5. **Backups** — what is backed up, how, and where
6. **Known quirks** — non-obvious behaviors, gotchas, workarounds
7. **Related** — links to relevant runbooks, lessons, reference files

---

## Cross-linking rule

When adding a new lesson:

a. Add a `CHANGELOG.md` entry at the top referencing the lesson file (e.g., `Added: [Lesson — longhorn disk pressure](docs/lessons/2026-04-longhorn-disk-pressure.md)`).

b. Open the relevant system doc(s) and add a link under the **Related** section pointing to the new lesson.

Both steps are mandatory; do not add a lesson without doing both.

---

## Inference labeling

The user expects clear separation of fact and judgment. Apply these labels inline:

- `[AI inference]` — for conclusions drawn from incomplete information, or assumptions about system behavior
- `Tip (inference):` — for suggested best practices not directly derived from observed facts

Verified facts (things the user told you, or things present in the repo) stand unlabeled. When in doubt, label.

---

## Secrets policy

Never write to any file:
- Passwords, API keys, tokens, or secrets of any kind
- Private key or certificate material (`*.key`, `*.pem`, `*.crt`)
- Full IP addresses of public-facing endpoints

Document the *shape* of a secret instead (e.g. `AUTHENTIK_BOOTSTRAP_PASSWORD=<set in .env>`).

If user input contains something that looks like a real secret, flag it immediately and refuse to write it to a file. Ask the user to provide a placeholder instead.

---

## Tone

Direct, factual, technical. No filler. No "great question" or "certainly!" preambles. The user is technically proficient — skip basic explanations unless explicitly asked. If something is uncertain, label it; otherwise state facts plainly.

---

## What NOT to do

- Do not create new top-level directories without asking.
- Do not reorganize the existing directory structure.
- Do not delete or rewrite past `CHANGELOG.md` entries.
- Do not edit old lesson files except to correct factual errors (and note the correction inline).
- Do not freestyle document structure — always copy from a `_template.md`.
