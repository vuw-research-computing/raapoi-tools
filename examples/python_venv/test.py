import webcolors
from random import randint
from socket import gethostname

colour_list = list(webcolors.css3_hex_to_names.items())
requested_colour = randint(0,len(colour_list))
colour_name = colour_list[requested_colour][1]

print("Random colour name:", colour_name, " on host: ", gethostname())