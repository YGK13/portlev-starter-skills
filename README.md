# PortLev Claude Starter Skills

Three ready-made skills for [Claude Code](https://claude.com/claude-code). Built by
[Yuri Kruman](https://www.linkedin.com/in/yurikruman/) for the PortLev learning community.

| Skill | What it does |
|-------|--------------|
| **book-engine** | Write a nonfiction book, end to end. |
| **autonomous-company-builder** | Go from a blank page to a real, sellable business. |
| **fable-mode** | Makes Claude plan harder and check its own work before calling it done. |

All three are self-contained. No plugins or other skills required.

## Easiest way to install (no technical skill needed)

Open Claude Code and paste this, with the link on the end:

```
Please install this for me and set it up, step by step:
https://github.com/YGK13/portlev-starter-skills
```

Claude clones this project and runs the installer. That's it. Close Claude Code,
reopen it, and try one: type **"help me write a book"** or **"build me a company"**.

## Manual install (if you prefer)

Download this repo (green **Code** button → **Download ZIP**), unzip it, then:

**Windows** — hold Shift, right-click inside the folder, "Open in Terminal", and run:

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

**Mac / Linux** — open Terminal, `cd` into the folder, and run:

```bash
bash install.sh
```

The installer drops the three skills into `~/.claude/skills/`. Any skill of the same
name already there is backed up first (renamed to `name.bak-<timestamp>`), never
overwritten silently. Then restart Claude Code so it picks them up.

## What's inside

```
portlev-starter-skills/
  install.ps1                     Windows installer
  install.sh                      Mac / Linux installer
  skills/
    book-engine/
    autonomous-company-builder/
    fable-mode/
```

---

Questions? Reach out to Yuri. If a skill helps you, pass it on.
