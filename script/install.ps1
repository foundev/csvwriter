# Copyright 2022 Ryan SVIHLA

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# script\install.ps1: Installs the application


Set-Location "$PSScriptRoot\.."


mkdir -ErrorAction SilentlyContinue -Path 'C:\Program Files\csvwriter'
mkdir -ErrorAction SilentlyContinue -Path 'C:\Program Files\csvwriter\bin'
Copy-Item .\README.md 'C:\Program Files\csvwriter\README.md'
Copy-Item .\LICENSE 'C:\Program Files\csvwriter\LICENSE'
cargo install --path 'C:\Program Files\csvwriter\csvw'