#!/usr/bin/env bats
setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    dir=$(cd "$(dirname "$BATS_TEST_FILENAME")"  >&/dev/null && pwd)
    PATH=$dir/..:$PATH
    DESIRED_OUTPUT=$(<"$dir"/sample.txt)
}

@test "APL-style Python" {
    run python fizzbuzz-apl.py
    assert_output "$DESIRED_OUTPUT"
}

@test "Emojicode" {
    emojicodec fizzbuzz.🍇 
    run ./fizzbuzz
    assert_output "$DESIRED_OUTPUT"
}

@test "Forth" {
    run gforth fizzbuzz.4th
    assert_output "$DESIRED_OUTPUT"
}

@test "Algol-68" {
    run a68g fizzbuzz.a68
    assert_output "$DESIRED_OUTPUT"
}

@test "APL" {
    run apl --noSV --script -f fizzbuzz.apl
    assert_output "$DESIRED_OUTPUT"
}

@test "AppleScript" {
    run osascript fizzbuzz.applescript
    assert_output "$DESIRED_OUTPUT"
}

@test "AWK" {
    run awk -f fizzbuzz.awk
    assert_output "$DESIRED_OUTPUT"
}

@test "BASIC" {
    run basic <(cat fizzbuzz.bas;echo exit)
    assert_output "$DESIRED_OUTPUT"
}

@test "Bash" {
    run bash fizzbuzz.bash
    assert_output "$DESIRED_OUTPUT"
}

@test "Befunge" {
    run bats_pipe bef -q fizzbuzz.bef \| sed 's/ *$//'
    assert_output "$DESIRED_OUTPUT"
}

@test "C shell" {
    run csh fizzbuzz.csh
    assert_output "$DESIRED_OUTPUT"
}

@test "dc" {
    run dc -f fizzbuzz.dc
    assert_output "$DESIRED_OUTPUT"
}

@test "Erlang" {
    run escript fizzbuzz.erl
    assert_output "$DESIRED_OUTPUT"
}

@test "><> (Fish)" {
    run fish.py fizzbuzz.'><>'
    assert_output "$DESIRED_OUTPUT"
}

@test "Fish shell" {
    run fish fizzbuzz.fish
    assert_output "$DESIRED_OUTPUT"
}

@test "Go" {
    run go run fizzbuzz.go
    assert_output "$DESIRED_OUTPUT"
}

@test "Haskell" {
    ghc fizzbuzz.hs && run ./fizzbuzz
    assert_output "$DESIRED_OUTPUT"
}

@test "JavaScript" {
    run node fizzbuzz.js 
    assert_output "$DESIRED_OUTPUT"
}

@test "Kotlin" {
    kotlinc fizzbuzz.kt && run kotlin FizzBuzzKt.class
    assert_output "$DESIRED_OUTPUT"
}

@test "Common Lisp" {
    run sbcl --script fizzbuzz.lisp
    assert_output "$DESIRED_OUTPUT"
}

@test "Logo" {
    run ucblogo fizzbuzz.logo
    assert_output "$DESIRED_OUTPUT"
}

@test "LOLCODE" {
    run lci fizzbuzz.lol
    assert_output "$DESIRED_OUTPUT"
}

@test "Perl 5" {
    run perl fizzbuzz.p5
    assert_output "$DESIRED_OUTPUT"
}

@test "Prog8" {
    rm fizzbuzz
    run prog8c -target virtual -emu -quiet fizzbuzz.p8
    assert_output "$DESIRED_OUTPUT"
}

@test "PHP" {
    run php fizzbuzz.php
    assert_output "$DESIRED_OUTPUT"
}

@test "Prolog" {
    run swipl -q -g main -l fizzbuzz.pl
    assert_output "$DESIRED_OUTPUT"
}

@test "Postscript" {
    run gs -q fizzbuzz.ps
    assert_output "$DESIRED_OUTPUT"
}

@test "PowerShell" {
    run pwsh fizzbuzz.ps1
    assert_output "$DESIRED_OUTPUT"
}

@test "Python" {
    run python fizzbuzz.py
    assert_output "$DESIRED_OUTPUT"
}

@test "Raku" {
    run raku fizzbuzz.raku
    assert_output "$DESIRED_OUTPUT"
}

@test "Ruby" {
    run ruby fizzbuzz.rb
    assert_output "$DESIRED_OUTPUT"
}

@test "Rust" {
    rustc fizzbuzz.rs && run ./fizzbuzz
    assert_output "$DESIRED_OUTPUT"
}

@test "Shell" {
    run sh fizzbuzz.sh
    assert_output "$DESIRED_OUTPUT"
}

@test "SNOBOL4" {
    run snobol4 fizzbuzz.sno
    assert_output "$DESIRED_OUTPUT"
}

@test "Tcl" {
    run tclsh fizzbuzz.tcl
    assert_output "$DESIRED_OUTPUT"
}

@test "Terraform" {
    terraform init && terraform apply 
    run bats_pipe terraform show --json \| jq -r '.values.outputs.fizzbuzz.value'
    assert_output "$DESIRED_OUTPUT"
}

@test "TypeScript" {
    tsc -outFile fbts.js fizzbuzz.ts && run node fbts.js
    assert_output "$DESIRED_OUTPUT"
}

@test "var'aq" {
    run varaq -s fizzbuzz.vq
    assert_output "$DESIRED_OUTPUT"
}

@test "Zsh" {
    run zsh fizzbuzz.zsh
    assert_output "$DESIRED_OUTPUT"
}
