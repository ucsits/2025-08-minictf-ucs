# Solve `find the cat in grep strings`

## TL;DR

1. Open the `st4rt_h3r3_f1rst`. In there, there is a command that can be executed: `$ find . -name "1m_th3_c4*"`. The results will be a lot file names. Go in to them one-by-one.
2. There will be a file that contains this command: `$ find . -name "1m_th3_c4*" | xargs cat`.s
3. One of the results would be: `$ grep -r "flag:" .`. If we use that command, the result would be a bunch of file names that contains the "flag:" string.
4. If you check them you could find the command: `$ grep -r "UCS{" .`. There would be more files that you need to check through them.
5. One of them would contain `$ echo "5543537b7930755f683476335f6630756e645f6d335f73305f6e30775f316e645f306e3335315f346e5f666c34675f6730745f6334747433647d" | xxd -r -p`. Run that command and you'll find the flag.

## Flag

UCS{y0u_h4v3_f0und_m3_s0_n0w_1nd_0n351_4n_fl4g_g0t_c4tt3d}
