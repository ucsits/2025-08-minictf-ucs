#include <stdio.h>
#include <string.h>

void main(void) {
	char buf[50];
	printf("Can you guess the password?\n");
	printf(">> ");
	scanf("%s", &buf);

	if (strcmp(buf, "UCS{certified_reverse_engineering_beginner}") == 0) {
		printf("You're very right!\n");
	} else {
		printf("WRONG\n");
	}
}
