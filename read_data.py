#!/usr/bin/env python
# -*- coding: utf-8 -*-

from glob import glob
import re

import odo
from pandas import DataFrame

mini_proj = {}
sources = glob("mini_proj*.csv.gz")
for s in sources:
	name = re.match('mini_proj-([^.]+).csv.gz', s).groups()[0]
	csv = odo.CSV(s, delimiter='\t', has_header=True)
	mini_proj[name] = odo.odo(csv, DataFrame)

