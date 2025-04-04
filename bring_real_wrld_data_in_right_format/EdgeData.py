# -*- coding: utf-8 -*-
"""
Created on Tue Sep 19 09:47:52 2023

"""

import os
import subprocess
import sys


def edgedatafromflow(detector_file, flow_traffic_file, edge_data_file):
    print('Start conversation with edgeDataFromFlow.py')
    
    subprocess.call( # ermöglicht ein externes Script auszuführen in der Klammer wird also ein Pfad eines Programms verlangt (Etwas was man im Terminal ausführen würde)
        f'{str(sys.executable)}' #sys.executable gibt den Pfad des Pyhton interpreters an
        f' "{os.path.join(os.environ.get("SUMO_HOME"), "tools", "detector", "edgeDataFromFlow.py")}" '
        f' -d {detector_file} -f {flow_traffic_file} -q qPKW -i 10 -o {edge_data_file} --v', 
        shell= True
    )   

    print('Conversation finished')



if __name__ == "__main__":
    edgedatafromflow(detector_file="/opt/homebrew/Cellar/sumo/1.20.0/share/sumo/bring_real_wrld_data_in_right_format/241106_induction_loops.add.xml",
                     flow_traffic_file="/opt/homebrew/Cellar/sumo/1.20.0/share/sumo/bring_real_wrld_data_in_right_format/SemikolonSepperated_output3.txt",
                     edge_data_file="edgedatafromflow.xml")

        