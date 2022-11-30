# SPDX-FileCopyrightText: 2022 Myrtle Shah
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

import sys, os, shutil
import pathlib

spdx_header = """// SPDX-FileCopyrightText: 
// 2022 Nguyen Dao
// 2022 Myrtle Shah
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// SPDX-License-Identifier: Apache-2.0
"""

def copy_verilog(src):
    with open(src, "r") as input_f:
        with open(f"./verilog/rtl/{os.path.basename(src)}", "w") as output_f:
            print(spdx_header, file=output_f)
            output_f.write(input_f.read())

def main():
    fab_root = f"{os.environ['HOME']}/fabulous-onehot"
    build_dir = f"{os.environ['HOME']}/test/build/gf180_onehot"

    fab_verilog = ["fabric.v", "eFPGA_top.v", "models_pack.v"]

    for v in fab_verilog:
        copy_verilog(f"{fab_root}/fabric_generator/verilog_output/{v}")
    copy_verilog(f"{fab_root}/fabric_generator/fabulous_top_wrapper_temp/wrapper_gf180.v")

    pathlib.Path("openlane/user_project_wrapper/macros/lef").mkdir(parents=True, exist_ok=True)
    pathlib.Path("openlane/user_project_wrapper/macros/gds").mkdir(parents=True, exist_ok=True)
    pathlib.Path("openlane/user_project_wrapper/macros/verilog").mkdir(parents=True, exist_ok=True)

    for tile in os.listdir(build_dir):
        if not os.path.isdir(f"{build_dir}/{tile}"):
            continue
        shutil.copy(f"{build_dir}/{tile}/runs/build_tile/results/final/lef/{tile}.lef", "openlane/user_project_wrapper/macros/lef")
        shutil.copy(f"{build_dir}/{tile}/runs/build_tile/results/final/gds/{tile}.gds", "openlane/user_project_wrapper/macros/gds")
        shutil.copy(f"{build_dir}/{tile}/src/{tile}_tile.v", "openlane/user_project_wrapper/macros/verilog")

if __name__ == '__main__':
    main()
