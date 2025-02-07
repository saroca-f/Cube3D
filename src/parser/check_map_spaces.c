/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check_map_spaces.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: schamizo <schamizo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/02 18:01:21 by schamizo          #+#    #+#             */
/*   Updated: 2025/02/07 14:48:58 by schamizo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"

int	check_if_valid_spaces(char **map)
{
	int	i;
	int	j;
	int	flag;

	i = 0;
	flag = 0;
	while (map[i])
	{
		j = 0;
		while (map[i][j])
		{
			if (map[i][j] == '0' || map[i][j] == 'N' || map[i][j] == 'S'
				|| map[i][j] == 'W' || map[i][j] == 'E')
			{
				flag = check_left_right_space(map, i, j, flag);
				flag = check_up_down_space(map, i, j, flag);
			}
			j++;
		}
		i++;
	}
	if (flag == 1)
		return (FAILURE);
	return (SUCCESS);
}

int	check_up_down_space(char **map, int i, int j, int flag)
{
	if (j != 0)
	{
		if (map[i][j - 1] == ' ')
		{
			print_invalid_space_error(i, j - 1);
			flag = 1;
		}
	}
	if ((size_t)j != ft_strlen(map[i]))
	{
		if (map[i][j + 1] == ' ')
		{
			print_invalid_space_error(i, j + 1);
			flag = 1;
		}
	}
	return (flag);
}

int	check_left_right_space(char **map, int i, int j, int flag)
{
	if (i != 0)
	{
		if (map[i - 1] && map[i - 1][j] == ' ')
		{
			print_invalid_space_error(i - 1, j);
			flag = 1;
		}
	}
	if (i != ft_split_size(map))
	{
		if (map[i + 1] && map[i + 1][j] == ' ')
		{
			print_invalid_space_error(i + 1, j);
			flag = 1;
		}
	}
	return (flag);
}
