# Proof of Concept

## TL;DR

Part 1: File yang dihapus
> git log --oneline --all\
git show 72d00fa:secrets.txt

`flag1:UCS{multipart`

Part 2: Stash
> git stash list\
git show stash@{0}:_note.txt

> echo "ZmxhZzI6X2lzXw==" | base64 -d

`flag2:_is_`

Part 3: Commit recon
>git log --oneline --all\
git show 04e04f1:src/app.py

> python -c "print(bytes.fromhex('66 6c 61 67 33 3a 66 75 6e 5f 69 73 6e 74 5f 69 74 7d'.replace(' ', '')).decode())"

`flag3:fun_isnt_it}`

## Flag
`UCS{multipart_is_fun_isnt_it}`