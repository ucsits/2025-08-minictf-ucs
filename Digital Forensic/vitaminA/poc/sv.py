from base64 import b64decode
log = open('access.log','r').readlines()
flag = b''
for line in log:
    if 'echo' in line:
        flag+=b64decode(line[71:].replace('%20|base64%20-d%20>>%20payload.png HTTP/1.1" 200 512 "-" "curl/7.88"',''))
open('recovered.png','wb').write(b'\x89PNG\r\n\x1a\n'+flag[8:])