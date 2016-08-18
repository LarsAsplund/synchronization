from vunit import VUnit
from os.path import dirname, join

vu = VUnit.from_argv()
lib = vu.add_library('lib')
lib.add_source_files(join(dirname(__file__), 'src', '*.vhd'))
tb_lib = vu.add_library('tb_lib')
tb_lib.add_source_files(join(dirname(__file__), 'test', '*.vhd'))
vu.main()
