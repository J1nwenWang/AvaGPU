import re

old_keywords = []
with open("keywords", "r") as f:
    # Initialize an empty list
  
    # Read file line by line and store each line in the list
    for line in f:
        old_keywords.append(line.strip())

# Print the contents of the list

    
new_keyword = 'cspl'
file_path = '/media/wjw/D6C3-3FEF/code/yujie_rodinia/cuda/hotspot/hotspot.cu'
outpath='/media/wjw/D6C3-3FEF/code/yujie_rodinia/cuda/hotspot/hotspot.mod.cu'
with open(file_path, 'r') as file:
    content = file.read()

for old_keyword in old_keywords:
    content = re.sub(old_keyword, new_keyword+'_'+old_keyword.upper(), content)

with open(outpath, 'w') as file:
    file.write(content)