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
# script\cibuild.ps1: Setup environment for CI to run tests. This is primarily
#                 designed to run on the continuous integration server.



Set-Location "$PSScriptRoot\.."

Write-Output "Starting bootstrap at"
Get-Date

.\script\bootstrap.ps1

Write-Output "Finished bootstrap"
Write-Output "Starting lint at"
Get-Date

.\script\lint.ps1

Write-Output "Finished lint"
Write-Output "Starting test at"
Get-Date

.\script\test.ps1

Write-Output "Finished test at"
Get-Date