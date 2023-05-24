# reg_num=137
for i in {0..139}; do
    echo "asm volatile (\"mov.b64  %rd$i,%0;\" : \"=l\"(buff[$i]));"
    ((reg_num++))
done