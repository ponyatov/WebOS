#![allow(unused)]

fn arg(argc: usize, argv: &str) {
    println!("argv[{}] = <{}>", argc, argv);
}

fn main() {
    // arg
    let argv: Vec<String> = std::env::args().collect();
    let argc = argv.len();
    arg(0, &argv[0]);
    for (argc, argv) in argv.iter().enumerate().skip(1) {
        // arg
        arg(argc, argv);
    }
}
