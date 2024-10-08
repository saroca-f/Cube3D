MAKEFLAGS += --no-print-directory

NAME = cub3D
NAME_BNS = cub3D_bonus
CC = clang
RM = rm -f

FLAGS = -g -Wall -Werror -Wextra -Iinclude #-fsanitize=address
MLX_FLAGS = -ldl -lglfw -pthread -lm

LIBFT_PATH = ./libft
LIBFT = $(LIBFT_PATH)/libft.a
MLX_PATH = ./MLX42
MLX = $(MLX_PATH)/libmlx42.a

FILES =	main \
		parser/check_map_borders \
		parser/check_map_player \
		parser/check_map_spaces \
		parser/check_map \
		parser/check_textures_rgb \
		parser/check_textures \
		parser/check_utils \
		parser/parser_errors \
		parser/get_map_utils \
		parser/get_map \
		parser/get_texture \
		parser/get_texture_utils \
		parser/parser \
		raycasting/angles_maker \
		raycasting/angles_maker_utils \
		raycasting/ray \
		game/game \
		game/game_move \
		game/game_check_move \
		game/init_variables \
		print_and_textures/textures \
		print_and_textures/print_floor_ceiling \
		print_and_textures/print_wall \
		print_and_textures/print_wall_utils \

BNS_FILES = main_bonus \
			parser/check_map_borders_bonus \
			parser/check_map_player_bonus \
			parser/check_map_spaces_bonus \
			parser/check_map_bonus \
			parser/check_textures_rgb_bonus \
			parser/check_textures_bonus \
			parser/check_utils_bonus \
			parser/parser_errors_bonus \
			parser/get_map_utils_bonus \
			parser/get_map_bonus \
			parser/get_texture_bonus \
			parser/get_texture_utils_bonus \
			parser/parser_bonus \
			parser/parser_door_bonus \
			raycasting/angles_maker_bonus \
			raycasting/angles_maker_utils_bonus \
			raycasting/ray_bonus \
			game/game_animation_bonus \
			game/init_variables_bonus \
			game/game_bonus \
			game/game_move_bonus \
			game/game_check_move_bonus \
			game/minimap_bonus \
			game/game_door_manage_bonus \
			game/mouse_move_bonus \
			print_and_textures/textures_bonus \
			print_and_textures/texture_utils_bonus \
			print_and_textures/print_floor_ceiling_bonus \
			print_and_textures/print_wall_bonus \
			print_and_textures/print_wall_utils_bonus \

$(shell mkdir -p ./src/obj)
$(shell mkdir -p ./src/obj/parser)
$(shell mkdir -p ./src/obj/raycasting)
$(shell mkdir -p ./src/obj/game)
$(shell mkdir -p ./src/obj/print_and_textures)
$(shell mkdir -p ./src/obj/charge_flag_makefile)
$(shell mkdir -p ./bonus/src/obj)
$(shell mkdir -p ./bonus/src/obj/parser)
$(shell mkdir -p ./bonus/src/obj/raycasting)
$(shell mkdir -p ./bonus/src/obj/game)
$(shell mkdir -p ./bonus/src/obj/print_and_textures)
$(shell mkdir -p ./bonus/src/obj/charge_flag_makefile)

SRCS_DIR = ./src/

OBJS_DIR = ./src/obj/

SRCS = $(addprefix $(SRCS_DIR), $(addsuffix .c, $(FILES)))
OBJS = $(addprefix $(OBJS_DIR), $(addsuffix .o, $(FILES)))

BNS_SRC_DIR = ./bonus/src/
BNS_OBJ_DIR = ./bonus/src/obj/
BNS_SRCS = $(addprefix $(BNS_SRC_DIR), $(addsuffix .c, $(BNS_FILES)))
BNS_OBJS = $(addprefix $(BNS_OBJ_DIR), $(addsuffix .o, $(BNS_FILES)))

$(OBJS_DIR)%.o: $(SRCS_DIR)%.c
	@$(CC) $(FLAGS) -c $< -o $@

$(BNS_OBJ_DIR)%.o: $(BNS_SRC_DIR)%.c
	@$(CC) $(FLAGS) -c $< -o $@

all: $(NAME)

$(NAME): $(MLX) $(LIBFT) $(OBJS) $(OBJS_DIR)/charge_flag_makefile/charge.flag
	@$(CC) $(OBJS) $(MLX) $(LIBFT) $(FLAGS) $(MLX_FLAGS) -o $(NAME)
	@echo
	@echo "$(MAGENTA)Cub3D compiled!$(RESET)"
	@echo

bonus: $(NAME_BNS)

$(NAME_BNS): $(MLX) $(LIBFT) $(BNS_OBJS) $(OBJS_DIR)/charge_flag_makefile/bonus.flag
	@$(CC) $(BNS_OBJS) $(MLX) $(LIBFT) $(FLAGS) $(MLX_FLAGS) -o $(NAME_BNS)
	@echo
	@echo "$(BLUE)Cub3D bonus compiled!$(RESET)"
	@echo

$(LIBFT):
	@make -C $(LIBFT_PATH) all

$(MLX):
	@make -C $(MLX_PATH) all

clean: 
	@$(RM) $(OBJS) $(BNS_OBJS) $(OBJS_DIR)/charge_flag_makefile/charge.flag
	@make -C $(LIBFT_PATH) clean
	@make -C $(MLX_PATH) clean
	@$(RM) $(OBJS_DIR)/charge_flag_makefile/bonus.flag:
	@echo
	@echo "$(RED)Cleaning Cub3D objects. $(RESET)"
	$(shell rm -rf ./src/obj)
	$(shell rm -rf ./bonus/src/obj)

fclean: clean
	@$(RM) $(NAME) $(NAME_BNS) $(MLX)
	@make -C $(LIBFT_PATH) fclean
	@echo "$(RED)Cleaning Cub3D executables.$(RESET)"
	@echo

re: fclean setup $(NAME)

setup:
	$(shell mkdir -p ./src/obj)
	$(shell mkdir -p ./src/obj/charge_flag_makefile)
	$(shell mkdir -p ./src/obj/parser)
	$(shell mkdir -p ./src/obj/raycasting)
	$(shell mkdir -p ./src/obj/game)
	$(shell mkdir -p ./src/obj/print_and_textures)
	$(shell mkdir -p ./bonus/src/obj)
	$(shell mkdir -p ./bonus/src/obj/parser)
	$(shell mkdir -p ./bonus/src/obj/raycasting)
	$(shell mkdir -p ./bonus/src/obj/game)
	$(shell mkdir -p ./bonus/src/obj/print_and_textures)
	$(shell mkdir -p ./bonus/src/obj/charge_flag_makefile)

.PHONY: clean fclean re all bonus setup

# Colors
MAGENTA = \033[35;1m
YELLOW  = \033[33;1m
GREEN   = \033[32;1m
WHITE   = \033[37;1m
RESET   = \033[0m
GRAY    = \033[0;90m
BLUE    = \033[34;1m
CYAN    = \033[37;1m
BOLD    = \033[1m
RED     = \033[31;1m

# Rule for the charging bar
$(OBJS_DIR)/charge_flag_makefile/charge.flag:
	@echo
	@echo -n "$(GREEN)Compiling: $(RESET)["
	@for i in $$(seq 1 2); do \
		echo -n "##"; \
		sleep 0.20; \
	done
	@for i in $$(seq 1 6); do \
		echo -n "####"; \
		sleep 0.10; \
	done
	@echo "] $(GREEN)Done!$(RESET)"
	@touch $(OBJS_DIR)/charge_flag_makefile/charge.flag

# Rule for the bonus charging bar
$(OBJS_DIR)/charge_flag_makefile/bonus.flag:
	@echo
	@echo -n "$(YELLOW)Compiling bonus: $(RESET)["
	@for i in $$(seq 1 2); do \
		echo -n "##"; \
		sleep 0.20; \
	done
	@for i in $$(seq 1 6); do \
		echo -n "####"; \
		sleep 0.10; \
	done
	@echo "] $(YELLOW)Done!$(RESET)"
	@touch $(OBJS_DIR)/charge_flag_makefile/bonus.flag
