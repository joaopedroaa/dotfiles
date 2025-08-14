# Copilot Instructions for AI Coding Agents

This repository contains personal dotfiles for a customized, Arch-based Linux environment. AI agents should follow these guidelines to be productive and avoid disrupting critical workflows.

## Architecture & Key Components
- **System configs**: Located in `etc/`, `boot/`, and `home/` for system-wide settings.
- **Custom scripts**: All user scripts are in `bin/`. These are invoked for automation, status, and system control.
- **Window manager**: i3 configuration and layouts are in `.config/i3/`.
- **Web server**: Minimal configs in `srv/http/` and `etc/httpd/`.

## Developer Workflows
- **Sync dotfiles**: Use `sync.sh` to synchronize dotfiles with the system. This script is the main entry point for setup and updates.
- **Layout management**: Save and restore i3 layouts using:
  - Save: `i3-save-tree --workspace N > ~/dotfiles/.config/i3/layouts/N.json`
  - Restore: `i3-msg "workspace N; append_layout ~/dotfiles/.config/i3/layouts/N.json"`
- **Script usage**: Scripts in `bin/` are called directly from the shell. Many are single-purpose utilities for system tasks.

## Project-Specific Conventions
- **Minimalism**: Avoid adding dependencies or bloat. Scripts should be POSIX-compliant and minimal.
- **Direct editing**: Most config files are edited directly; avoid complex templating or overlays.
- **No package manager wrappers**: System updates and package management are handled manually or via simple scripts.

## Integration Points
- **i3 window manager**: Integrates with custom scripts for layout, wallpaper, and status.
- **Web server**: Configured for local development, not exposed externally by default.
- **Systemd, LightDM, PulseAudio**: Configs in `etc/` for service management and audio.

## Examples
- To update system configs, edit files in `etc/` and run `sync.sh`.
- To add a new utility, place the script in `bin/` and ensure it is executable.
- To change i3 behavior, edit `.config/i3/config` and optionally update layouts.

## Key Files & Directories
- `sync.sh`: Main sync script
- `bin/`: Custom shell scripts
- `etc/`: System configuration files
- `.config/i3/`: Window manager configs and layouts
- `boot/`: Bootloader and EFI configs
- `srv/http/`: Web server files

---
For any unclear conventions or missing documentation, ask the user for clarification before making changes.
