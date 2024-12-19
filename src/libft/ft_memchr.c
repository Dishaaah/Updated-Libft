/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbastard <jbastard@student.42.fr>          #+#  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024-10-21 13:21:16 by jbastard          #+#    #+#             */
/*   Updated: 2024-10-21 13:21:16 by jbastard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "../../include/libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	int	i;

	i = 0;
	while (n--)
	{
		if (((unsigned char *)s)[i] == ((unsigned char)c))
			return ((void *)s + i);
		i++;
	}
	return (0);
}

// int	main(void)
// {
// 	char *s = "Coucou comment tu vas?";
// 	int	c = 'm';
// 	size_t n = 12;
// 	printf("%s\n", (char *) ft_memchr(s, c, n));
// 	printf("%s\n", (char *) memchr(s, c, n));
// }