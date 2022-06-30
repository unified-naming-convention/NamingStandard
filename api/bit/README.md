Luau Type Checking Format
```lua
bit = bit :: {
	arshift: (o1: number, o2: number) -> number,
	badd: (o1: number, o2: number) -> number,
	band: (o1: number, o2: number) -> number,
	bdiv: (o1: number, o2: number) -> number,
	bmul: (o1: number, o2: number) -> number,
	bnot: (o: number) -> number,
	bor: (o1: number, o2: number) -> number,
	bsub: (o1: number, o2: number) -> number,
	bswap: (n: number) -> number,
	bxor: (o1: number, o2: number) -> number,
	lshift: (n: number, amount: number) -> number,
	rol: (n: number, amount: number) -> number,
	ror: (n: number, amount: number) -> number,
	rshift: (n: number, amount: number) -> number,
	tobit: (n: number) -> number,
	tohex: (n: number) -> string,
}
```
