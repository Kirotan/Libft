# libft

**Re‑coding several standard C library functions from scratch.**

---

## ✨ Overview

`libft` is my personal re‑implementation of key functions from the C standard library, completed as part of the **42** core curriculum.
The goal is to build a clean, **dependency‑free** static library (`libft.a`) that can be seamlessly dropped into any C project.

---

## 📑 Table of Contents

1. [Features](#-features)
2. [Directory Structure](#-directory-structure)
3. [Getting Started](#-getting-started)
4. [Usage](#-usage)
5. [Tests](#-tests)
6. [Project Context](#-project-context)
7. [License](#-license)

---

## ⚙️ Features

| Category                       | Functions                                                                                                                                                                                                                                                                                                           |
| ------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Part 1** – Libc re‑code      | `ft_memset`, `ft_bzero`, `ft_memcpy`, `ft_memmove`, `ft_memchr`, `ft_memcmp`, `ft_strlen`, `ft_strlcpy`, `ft_strlcat`, `ft_strchr`, `ft_strrchr`, `ft_strncmp`, `ft_strnstr`, `ft_toupper`, `ft_tolower`, `ft_isalpha`, `ft_isdigit`, `ft_isalnum`, `ft_isascii`, `ft_isprint`, `ft_atoi`, `ft_calloc`, `ft_strdup` |
| **Part 2** – Additional utils  | `ft_substr`, `ft_strjoin`, `ft_strtrim`, `ft_split`, `ft_itoa`, `ft_strmapi`, `ft_striteri`, `ft_putchar_fd`, `ft_putstr_fd`, `ft_putendl_fd`, `ft_putnbr_fd`                                                                                                                                                       |
| **Bonus** – Singly linked list | `ft_lstnew`, `ft_lstadd_front`, `ft_lstadd_back`, `ft_lstdelone`, `ft_lstclear`, `ft_lstiter`, `ft_lstmap`, `ft_lstsize`, `ft_lstlast`                                                                                                                                                                              |

All functions respect the canonical **42** error‑handling and memory‑safety guidelines.

---

## 🗂️ Directory Structure

```text
libft/
├── inc/            # Public headers (libft.h)
├── srcs/           # Function implementations
│   ├── part1/
│   ├── part2/
│   └── bonus/
├── tests/          # Unit tests (criterion)
├── Makefile
└── README.md       # You are here
```

---

## 🚀 Getting Started

### Prerequisites

* **make**
* **gcc** (or any C99‑compatible compiler)

### Build

```bash
# Clone
git clone https://github.com/Kirotan/libft.git
cd libft

# Compile static library
make                # creates libft.a
```

A successful build drops `libft.a` into the project root.

### Clean targets

```bash
make clean          # remove object files
make fclean         # remove object files + libft.a
make re             # full rebuild
```

---

## 📚 Usage

```c
#include "libft.h"

int main(void)
{
    char src[] = "libft";
    char dst[10];

    ft_strlcpy(dst, src, sizeof(dst));
    ft_putendl_fd(dst, 1);  // writes "libft" to stdout

    return 0;
}
```

Compile and link:

```bash
gcc main.c -L. -lft -o demo
./demo
```

---

## 🧪 Tests

The `tests/` folder contains unit tests powered by **Criterion**.

```bash
make test           # build and run tests
```

---

## 🏛️ Project Context

This project was developed at **École 42** as one of the first milestones in the common core.
It enforces rigorous coding standards (`norminette`), memory‑safety, and clean API design.

---

## 📄 License

This project is released under the MIT License — see [`LICENSE`](LICENSE) for details.
