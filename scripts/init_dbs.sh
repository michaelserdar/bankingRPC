#!/usr/bin/env bash
set -euo pipefail
sqlite3 bank1/bank1.db < bank1/db_init.sql
sqlite3 bank2/bank2.db < bank2/db_init.sql
