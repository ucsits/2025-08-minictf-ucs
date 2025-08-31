# Proof of Concept

## TL;DR

### Solution 1
- Use TCP Stream feature in wireshark
- Browse all the stream until you found a nice conversation with the flag inside

### Solution 2
- We know the flag format is `UCS{*}`
- Try to filter the flag like `frame contains "UCS"`

## Flag
`UCS{Introduction_To_Wireshark_Hope_You_Guys_Got_selected_to_UCS!}`