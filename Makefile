# ******************************************************************************#
#									LIBFT										#
# ******************************************************************************#

# ------------------------------------------------------------------------------#
# 	Settings                                                                    #
# ------------------------------------------------------------------------------#

NAME		:= libft.a
CC			:= cc
CFLAGS		:= -Wall -Wextra -Werror -Iinc
AR			:= ar rcs
RM			:= rm -f

# ------------------------------------------------------------------------------#
#	Directories & files                                                         #
# ------------------------------------------------------------------------------#

SRC_DIR		:= srcs
OBJ_DIR		:= obj

# Grab every .c in srcs/ automatically
SRC			:= $(wildcard $(SRC_DIR)/*.c)
OBJ			:= $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRC))

# ------------------------------------------------------------------------------#
#	Rules                                                                       #
# ------------------------------------------------------------------------------#


all: $(NAME)

$(NAME): $(OBJ)
	@$(AR) $@ $^
	@echo "\033[32m[AR]	$@ built\033[0m"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	@$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	@mkdir -p $@

bonus: $(NAME)

clean:
	@$(RM) $(OBJ)
	@echo "\033[33m[RM]	object files removed\033[0m"

fclean: clean
	@$(RM) $(NAME)
	@echo "\033[33m[RM]	$(NAME) removed\033[0m"

re: fclean all

.PHONY: all clean fclean re bonus
