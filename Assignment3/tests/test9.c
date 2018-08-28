int main() {
	int x = 0;
	int i;
	while(1) {
		x = x+1; if(x > 100) break;
	}
	for(i = 0; i < 10; i++) {
		x--;
		++x;
		x = x + i;
	}
	return 0;
}
