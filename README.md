# npl-init

A simple and lightweight init system for **NoPersonalLife Linux**. 

While specifically designed for NoPersonalLife Linux, **npl-init** can be installed and run on any Linux distribution that uses **BusyBox**.

---

## Installation

### 1. Clone the repository

```bash
git clone https://github.com/Nick-cpp/npl-init
cd npl-init
```

### 2. Make the installer executable

```bash
chmod +x install
```

---

## Usage

### Direct System Installation

To install directly into the running root system (`/`):

  ```bash
  ./install
  ```

---

### Installation via `DESTDIR` (Chroot / Staging Target)

If you are bootstrapping a new system, installing inside a `chroot`, or deploying to a mounted filesystem (e.g., `/mnt`):

* **Standard environment variable usage:**
  ```bash
  DESTDIR=/path/to/target ./install
  ```
* **Or**

  ```bash
  ./install /path/to/target
  ```
