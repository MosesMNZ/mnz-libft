/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mmuamba <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/05/26 14:37:51 by mmuamba           #+#    #+#             */
/*   Updated: 2018/05/26 15:14:06 by mmuamba          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(const char *s1, const char *s2, size_t len)
{
	size_t	len2;

	if (*s2 == '\0')
		return ((char *)s1);
	len2 = ft_strlen((char *)s2);
	while (*s1 != '\0' && len-- >= len2)
	{
		if (*s1 == *s2 && ft_memcmp(s1, s2, len2) == 0)
			return ((char *)s1);
		s1++;
	}
	return (NULL);
}
