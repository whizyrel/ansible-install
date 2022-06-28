# Ansible

I have used shell scripts to write the configurations. This setup contains just a shell script for Redhat Ansible.

## Shell Script

The respective shell script files is in this [file](./ansible.sh). In this shell script pip was used.

## Usage

The following must have been installed:

- Python3
- pip

Make executable

```bash
chmod +x ansible.sh
```

Install latest

```bash
./ansible.sh
```

OR specific version

```bash
./ansible.sh --version=1.01
```

## Sources

- Ansible [guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).
