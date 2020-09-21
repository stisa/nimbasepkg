name: Check
on: 
  push:
    paths:
      - 'src/**'
  workflow_dispatch:   
  schedule:
    - cron: '3 2 1 * *' 
jobs:
  check:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        nim: [ '1.2.0', 'stable', 'devel' ]
    name: Check on nim ${{ matrix.nim }}
    steps:
      - uses: actions/checkout@master
        
      - name: Cache choosenim
        id: cache-choosenim
        uses: actions/cache@v1
        with:
          path: ~/.choosenim
          key: ${{ runner.os }}-choosenim-stable

      - name: Cache nimble
        id: cache-nimble
        uses: actions/cache@v1
        with:
          path: ~/.nimble
          key: ${{ runner.os }}-nimble-stable

      - name: Setup nim
        uses: jiro4989/setup-nim-action@v1.1.3
        with:
          nim-version: ${{ matrix.nim }}
      - run: nim check src/nimtemplate.nim
