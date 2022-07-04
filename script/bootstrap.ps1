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
# script\bootstrap.ps1: Resolve all dependencies that the application requires to
#       


Set-Location "$PSScriptRoot\.."

Write-Output "checking if scoop is installed"

if (Get-Command "scoop" -ErrorAction SilentlyContinue) 
{ 
    Write-Output "scoop is present skipping install"
} else {
    Write-Output "scoop could not be found installing rustup"
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    Invoke-RestMethod get.scoop.sh | Invoke-Expression
}

Write-Output "checking if cargo is present"

if (Get-Command "cargo.exe" -ErrorAction SilentlyContinue) 
{ 
   Write-Output "cargo.exe is present skipping install"
} else {
   Write-Output "cargo could not be found installing rust which includes rust via scoop"
   scoop install rustup
}

Write-Output "checking if rustfmt is present"

if (Get-Command "rustfmt" -ErrorAction SilentlyContinue) 
{ 
   Write-Output "rustfmt is present skipping install"
} else {
   Write-Output "rustfmt could not be found installing"
   rustup component add rustfmt
}