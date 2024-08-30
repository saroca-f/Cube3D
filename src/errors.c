/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   errors.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: schamizo <schamizo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/08/21 16:30:17 by schamizo          #+#    #+#             */
/*   Updated: 2024/08/29 17:52:11 by schamizo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"

void	print_error(char *str)
{
	ft_putstr_fd(RED"Error: "RESET, 2);
	ft_putstr_fd(str, 2);
}

void	error_invalid_char(char **map, int line, int pos)
{
	print_error("Invalid character \"");
	ft_putchar_fd(map[line][pos], 2);
	ft_putstr_fd("\" in map at line ", 2);
	ft_putnbr_fd(line + 1, 2);
	ft_putstr_fd(":", 2);
	ft_putnbr_fd(pos + 1, 2);
	ft_putstr_fd(".\n", 2);
}