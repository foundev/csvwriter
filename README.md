#  Csv Writer

I often need to generate files for testing, and I figure rather than writing a new generator each time I can output to CSV and from there import into whatever standardized data source I want. This has a number of advantages as a lot of benchmarking tools will also take a csv as source.

## Goals

* Generate realistic data, this means support various data skews and use realistic data sources
* Output the files quickly
* Support at least one source format for the generation rules
* Support a the command as well as the source format

## Non Goals

* Connect directly to databases, this will complicate the code a lot, and as more databases are added more conflicts are likely
* Support N number of output formats. I could see this changing of course, but CSV is super boring and has been around a long time, since so many things support it as an input source this fits my goals perfectly, if somehow another format takes that place, or if a particularly domain prefers another of course I will add another, but more likely I will break this into a lot of different libraries instead and provide another front end in another repo.

## How to use

TBD

## How to build

```sh
cargo build`
./src/target/csvwriter
```
