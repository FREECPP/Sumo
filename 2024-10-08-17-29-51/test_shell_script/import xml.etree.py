import xml.etree.ElementTree as ET 
import os
path = "random_bike.rou.xml"
keyword = "bike"
tag_name = "trip"

def change_id(path_of_xml,word_before_id):
    tree = ET.parse(path_of_xml)
    root = tree.getroot()

    starting_index = 0
    for child in root: 
        if child.tag == tag_name:
            child.set("id" ,word_before_id + str(starting_index))
            starting_index = starting_index + 1
            print(child.tag, child.attrib)
    tree.write(path, encoding='utf-8', xml_declaration=True)

change_id(path, keyword)
