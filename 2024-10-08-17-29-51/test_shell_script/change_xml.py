import xml.etree.ElementTree as ET 
import argparse
#Wenn das script in der Konsole aufgerufen wird muss der Aufruf wie folgt aussehen "python scriptname.py pfad_der_xml wort_vor_id tags_in_xml"
parser = argparse.ArgumentParser(description='Ändert die ID')

parser.add_argument('--path', type=str, required=True, help='Pfad der zu änderndern XML')
parser.add_argument('--key', type=str, required=True, help='Welches Wort vor der ID stehen soll')
parser.add_argument('--tag', type=str, required=True, help='Welcher tag wird in der XML verwendet')

args = parser.parse_args()
#path = {sys.argv[1]} #Pfad der xml datei
#keyword = {sys.argv[2]} #Wort das vor der ID stehen soll
#tag_name = {sys.argv[3]} # tags die in der xml-file verwendet werden

def change_id(path_of_xml,word_before_id,tag):
    tree = ET.parse(str(path_of_xml))
    root = tree.getroot()

    starting_index = 0
    for child in root: 
        if child.tag == tag:
            child.set("id" ,word_before_id + str(starting_index))
            starting_index = starting_index + 1
            print(child.tag, child.attrib)
    tree.write(path_of_xml, encoding='utf-8', xml_declaration=True)

change_id(args.path, args.key,args.tag)
