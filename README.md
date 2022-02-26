# Hub88 Developer Challenge
## By Aleksander Tkatsenko

## Setup
### Install dependecies

```bash
mix deps.get
```

### Create and migrate databases

```bash
mix ecto.setup
```

### Run

```bash
mix phx.server
```
Or inside of `IEx`
```bash
iex -S mix phx.server
```

## Database

Install postgres
```bash
sudo pacman -S postgresql
```

Configure postgres
```bash
sudo -u postgres initdb -D /var/lib/postgres/data
```

### Development database

Create a user for this project, using password: `operatorPASS`
```bash
sudo -u postgres createuser -P -e operator
```

And a database for that user
```bash
sudo -u postgres createdb -O operator -e operator_dev
```

Create tables:
```bash
bash database_create_tables.sh
```

Populate common tables with data:
```bash
mix run database_load_common.exs
```

Load some test data into other tables:
```bash
mix run database_load_test_data.exs
```

## Technical

Development machine:
```
>>> screenfetch
                   -`                 
                  .o+`                 sadava@marshmallow
                 `ooo/                 OS: Arch Linux 
                `+oooo:                Kernel: x86_64 Linux 5.16.11-arch1-1
               `+oooooo:               Uptime: 0m
               -+oooooo+:              Packages: 780
             `/:-:++oooo+:             Shell: zsh 5.8.1
            `/++++/+++++++:            Resolution: 1920x1080
           `/++++++++++++++:           WM: bspwm
          `/+++ooooooooooooo/`         GTK Theme: Adwaita [GTK3]
         ./ooosssso++osssssso+`        Disk: 235G / 465G (54%)
        .oossssso-````/ossssss+`       CPU: AMD A6-7400K Radeon R5, 6 Compute Cores 2C+4G @ 2x 3.5GHz
       -osssssso.      :ssssssso.      GPU: AMD KAVERI (DRM 2.50.0, 5.16.11-arch1-1, LLVM 13.0.1)
      :osssssss/        osssso+++.     RAM: 1673MiB / 6884MiB
     /ossssssss/        +ssssooo/-    
   `/ossssso+/:-        -:/+osssso+-  
  `+sso+:-`                 `.-/+oso: 
 `++:.                           `-/+/
 .`                                 `/
```

Software versions:
```
Erlang/OTP 24 [erts-12.2.1] [source] [64-bit] [smp:2:2] [ds:2:2:10] [async-threads:1] [jit]

Elixir 1.13.0 (compiled with Erlang/OTP 24)
Mix 1.13.0 (compiled with Erlang/OTP 24)
Eshell V12.2.1

postgres (PostgreSQL) 13.6
```

## Timeline

`2022-02-25 02:41` - could not get my head around `Ecto`, off to bed, continue tomorrow  
`2022-02-25 23:23` - initial database sketch
`2022-02-25 21:52` - updated my machine and installed Elixir  
`2022-02-25 21:18` - reading about Elixir and it's frameworks  
`2022-02-25 21:16` - starting the project  
`2022-02-25 22:33` - initialized Phoenix project  
`2022-02-25 22:42` - installed postgres and configured the project  
