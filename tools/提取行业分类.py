# -*- coding: utf-8 -*-
import os

print (os.getcwd())
with open("./tools/新浪证监会行业分类.txt", 'r', encoding='utf-8') as fr:
    content = fr.read()

with open("./tools/result.txt",'w', encoding='utf-8') as fw:
    posZL = 0
    posDL = 0
    while posZL != -1 and posDL != -1:
        posZL = content.find('hidefocus="true">', posZL+1)
        posDL = content.find('class="parentLink">', posDL+1)
        if posDL>posZL and posZL != -1:
            posDL = posZL
            posEnd = content.find('</a>',posZL)
            fw.write(content[posZL+17:posEnd]+'\n')
        elif posDL != -1:
            posZL = posDL
            posEnd = content.find('</a>',posDL)
            fw.write('\n' + content[posDL+19:posEnd] + '\n' + '\n')
        