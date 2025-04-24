# libft

![Libft Badge](https://github.com/ayogun/42-project-badges/raw/main/covers/cover-libft.png)

## Overview

**libft** is a custom C library that re-implements fundamental standard library functions and useful utilities, first developed as a core project at 42 School. It contains high-quality, reusable C functions for strings, memory, number handling, printing, and more.

---

## Directory Structure

```
4drie2-libft/
├── ft_atoi.c
├── ft_bzero.c
├── ft_calloc.c
... (see below for full list and purpose)
├── libft.h
└── Makefile
```

---

## File Descriptions

**A few examples:**

- **ft_atoi.c**: Implements ASCII to integer conversion (`atoi`).
- **ft_bzero.c**: Fills a buffer with zero bytes (like `bzero`).
- **ft_calloc.c**: Allocates memory for an array, with all bytes set to zero.
- **ft_split.c**: Splits a string into an array of substrings by a delimiter.
- **ft_printf.c**: Simplified implementation of the `printf` function.
- **ft_strjoin.c**: Concatenates two strings into a new one.
- **ft_strcmp.c**: Compares two strings (like the standard `strcmp`).
- **ft_freestr.c**: Frees an array of strings.

**All files:**

| File                 | Description                                        |
|----------------------|----------------------------------------------------|
| `ft_atoi.c`          | Converts a string to an integer (`atoi`).          |
| `ft_bzero.c`         | Sets all bytes in a buffer to zero (`bzero`).      |
| `ft_calloc.c`        | Allocates zero-initialized memory (`calloc`).      |
| `ft_freestr.c`       | Frees an array of strings (`char **`).             |
| `ft_isalnum.c`       | Checks for alphanumeric characters.                |
| `ft_isalpha.c`       | Checks for alphabetic characters.                  |
| `ft_isascii.c`       | Checks for ASCII characters.                       |
| `ft_isdigit.c`       | Checks for digit characters.                       |
| `ft_isprint.c`       | Checks for printable characters.                   |
| `ft_isspace.c`       | Checks for whitespace characters.                  |
| `ft_itoa.c`          | Converts an integer to string.                     |
| `ft_lsc.c`           | Linked list utilities (custom structure).          |
| `ft_memchr.c`        | Scans memory for a character.                      |
| `ft_memcmp.c`        | Compares memory areas.                             |
| `ft_memcpy.c`        | Copies memory areas.                               |
| `ft_memmove.c`       | Moves memory (handles overlap).                    |
| `ft_memset.c`        | Fills memory with a byte.                          |
| `ft_printf.c`        | Custom printing function, minimal `printf`.        |
| `ft_putchar_fd.c`    | Writes a character to a file descriptor.           |
| `ft_putendl_fd.c`    | Writes a string and newline to a file descriptor.  |
| `ft_putnbr_fd.c`     | Writes a number to a file descriptor.              |
| `ft_putstr_fd.c`     | Writes a string to a file descriptor.              |
| `ft_split.c`         | Splits a string by a delimiter.                    |
| `ft_strchr.c`        | Finds a character in a string.                     |
| `ft_strcmp.c`        | Compares two strings.                              |
| `ft_strdup.c`        | Duplicates a string.                               |
| `ft_striteri.c`      | Iterates over a string, applying a function.       |
| `ft_strjoin.c`       | Concatenates two strings.                          |
| `ft_strjoin_free.c`  | Concatenates and frees the first string.           |
| `ft_strlcat.c`       | Concatenates strings with size limit.              |
| `ft_strlcpy.c`       | Copies strings with size limit.                    |
| `ft_strlen.c`        | Computes string length.                            |
| `ft_strmapi.c`       | Maps a function to each char of a string.          |
| `ft_strncmp.c`       | Compares strings up to `n` bytes.                  |
| `ft_strnstr.c`       | Finds a substring in a string.                     |
| `ft_strrchr.c`       | Finds last occurrence of a character in a string.  |
| `ft_strtrim.c`       | Trims characters from start/end of a string.       |
| `ft_substr.c`        | Extracts a substring from a string.                |
| `ft_tolower.c`       | Converts a char to lowercase.                      |
| `ft_toupper.c`       | Converts a char to uppercase.                      |
| `libft.h`            | Header file declaring all functions and types.     |
| `Makefile`           | Build script supporting multiple compilers.         |

---

## Installation

```bash
git clone https://github.com/yourusername/4drie2-libft.git
cd 4drie2-libft
make
```
Creates `libft.a` in the repo.

## Usage

```c
#include "libft.h"
```
Compile with:  
```bash
make
gcc your_file.c -L. -lft
```
