# Proof of Concept
You were given an address

```
0x77777775c2F5C30868Cf6419392bc667DdD207EC
```

You can get the $BASED token balance of that address using online tools such as https://basescan.org/

First, go to https://basescan.org/token/0x07d15798a67253D76cea61F0eA6F57AeDC59DffB. Then, navigate to the Contract tab.
After that, navigate again to the Read Contract child tab. Expand the `balanceOf` section. Put the address you were given into the
input field. Click Query button. Click the big number (which is also a link). The balance has now been converted to Ether, that's
your flag!

Flag (case-insensitive): `UCS{777}`
