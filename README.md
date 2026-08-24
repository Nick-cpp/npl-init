# npl-init

A simple and lightweight init system for **NoPersonalLife Linux**. 

While specifically designed for NoPersonalLife Linux, **npl-init** can be installed and run on any Linux distribution that uses **BusyBox**.

---

## Installation

### Clone the repository

```bash
git clone https://github.com/Nick-cpp/npl-init
cd npl-init
```

## Usage

### Direct System Installation

To install directly into the running root system (`/`):

  ```bash
  make install
  ```

---

### Installation via `DESTDIR` (Chroot / Staging Target)

If you are bootstrapping a new system, or deploying to a mounted filesystem (e.g., `/mnt`):

  ```bash
  make DESTDIR=/path/to/target install

  ```

Thanks to [LINUXHUNTERREDHAT](https://github.com/LINUXHUNTERREDHAT) for providing the Makefile.
