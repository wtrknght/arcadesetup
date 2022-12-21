file = open("/etc/default/grub", "r")
replaced_content = ""
for line in file:
        line = line.strip()
    new_line = line.replace("GRUB_TIMEOUT=\\"5\\"", "GRUB_TIMEOUT=\\"0\\"")
    replaced_content = replaced_content + new_line + "\n"
file.close()
write_file = open("demo.txt", "w")
write_file.write(replaced_content)
write_file.close()
