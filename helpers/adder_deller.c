/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   adder_deller.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: msariasl <msariasl@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/16 21:25:26 by msariasl          #+#    #+#             */
/*   Updated: 2023/02/17 03:47:16 by msariasl         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../push_swap.h"

void	del_first(t_stack **start)
{
	if ((*start)->next)
		*start = (*start)->next;
	else
	{
		*start = 0;
		free(*start);
	}
}

void	del_last(t_stack **start)
{
	t_stack	*temp;
	t_stack	*last;

	if (*start)
	{
		if ((*start)->next)
		{
			temp = *start;
			while ((*start)->next)
			{
				last = *start;
				(*start) = (*start)->next;
			}
			last->next = 0;
			free(last->next);
			*start = temp;
		}
		else
		{
			*start = 0;
			free(*start);
		}
	}
}

void	add_first(t_stack **start, int value)
{
	t_stack	*new;

	new = (t_stack *)malloc(sizeof(t_stack));
	new->value = value;
	if (*start)
	{
		new->next = *start;
		(*start) = new;
	}
	else
		*start = new;
}

void	add_last(t_stack **start, int value)
{
	t_stack	*new;
	t_stack	*temp;

	new = (t_stack *)malloc(sizeof(t_stack));
	new->value = value;
	if (*start)
	{
		temp = *start;
		while ((*start)->next)
		{
			*start = (*start)->next;
		}
		(*start)->next = new;
		*start = temp;
	}
	else
	{
		*start = new;
	}
}

int	get_last(t_stack **start)
{
	t_stack	*temp;
	int		value;

	value = 0;
	if (*start)
	{
		temp = *start;
		while (*start)
		{
			if ((*start)->next)
				*start = (*start)->next;
			else
			{
				value = (*start)->value;
				break ;
			}
		}
		*start = temp;
	}
	return (value);
}