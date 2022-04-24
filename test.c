#include <fcntl.h>

int main(void)
{
	int fd = open("loader", O_RDWR, S_IRWXU);
	return (0);
}
