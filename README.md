# Libft - Custom C Library

Welcome to my Libft project, a custom C library developed as part of the 42 school curriculum. This project involves recreating a set of standard C library functions, as well as additional functions for linked list manipulation and other utilities.

## Features

- **Conversion and Parsing Functions**: `ft_atoi`, `ft_itoa`, etc.
- **Memory Manipulation**: `ft_memset`, `ft_memcpy`, `ft_memmove`, `ft_bzero`, `ft_calloc`, etc.
- **String Functions**: `ft_strlen`, `ft_strdup`, `ft_strjoin`, `ft_strtrim`, `ft_split`, `ft_substr`, etc.
- **Character Testing Functions**: `ft_isalpha`, `ft_isdigit`, `ft_isalnum`, `ft_isascii`, `ft_isprint`, `ft_toupper`, `ft_tolower`, etc.
- **File Manipulation Functions**: `ft_putchar_fd`, `ft_putstr_fd`, `ft_putendl_fd`, `ft_putnbr_fd`, etc.
- **Linked List Manipulation**: `ft_lstnew`, `ft_lstadd_front`, `ft_lstadd_back`, `ft_lstsize`, `ft_lstlast`, `ft_lstdelone`, `ft_lstclear`, `ft_lstiter`, `ft_lstmap`, etc.
- **Additional Functions**: `ft_printf`, `get_next_line`, `ft_max`, `ft_min`, etc.

## Usage

To compile the library, use the included Makefile:

- `make`: Compiles the library and generates the `libft.a` file.
- `make clean`: Deletes the compiled object files.
- `make fclean`: Deletes the compiled object files and the library.
- `make re`: Fully recompiles the library.

## Educational Value

As the first project at Ecole 42, Libft is an essential step in the curriculum because it allows students to:

- **Strengthen their C language knowledge**: By re-implementing basic functions, students gain a deeper understanding of the C language and its mechanisms.
- **Develop memory management skills**: Memory manipulation functions like `ft_memset` and `ft_calloc` help students understand dynamic allocations and resource management.
- **Practice modular programming**: By creating a reusable library, students learn to organize their code in a modular and maintainable way.
- **Improve debugging and testing skills**: Working on basic functions and testing them rigorously helps develop strong debugging and code validation skills.

---

Thank you for taking the time to check out this project! I hope it will be useful in your own C projects.
