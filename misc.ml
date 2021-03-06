open Lcd

let draw_caml_logo () =
  let chars = [
    [
      0b00000;
      0b00111;
      0b01111;
      0b00011;
      0b00001;
      0b00001;
      0b00000;
      0b00000;
    ];

    [
      0b00000;
      0b00000;
      0b00000;
      0b00000;
      0b00011;
      0b11111;
      0b11111;
      0b11111;
    ];

    [
      0b00000;
      0b00000;
      0b00000;
      0b11110;
      0b11111;
      0b11111;
      0b11111;
      0b11111;
    ];

    [
      0b00000;
      0b00000;
      0b00000;
      0b00000;
      0b00000;
      0b10000;
      0b11000;
      0b10000;
    ];

    [
      0b00000;
      0b00000;
      0b00000;
      0b00000;
      0b00000;
      0b00000;
      0b00000;
      0b00000;
    ];

    [
      0b00011;
      0b00011;
      0b00011;
      0b00010;
      0b00010;
      0b00011;
      0b00110;
      0b00000;
    ];

    [
      0b00000;
      0b00000;
      0b00000;
      0b00000;
      0b00000;
      0b00001;
      0b00000;
      0b00000;
    ];

    [
      0b10000;
      0b10000;
      0b11000;
      0b10000;
      0b10000;
      0b10000;
      0b00000;
      0b00000;
    ]
  ] in
  List.iteri (fun i c -> LCD.new_char i c) chars;
  LCD.message "\000\001\002\003";
  LCD.move_cursor_abs (0, 1);
  LCD.message "\004\005\006\007";
  LCD.move_cursor_abs (6, 0);
  LCD.message "OCaml";
  LCD.move_cursor_abs (8, 1);
  LCD.message "FTW";
;;

let accents_chars =
  [|
    [
      0b00000000;
      0b00001110;
      0b00001001;
      0b00001001;
      0b00011101;
      0b00001001;
      0b00001001;
      0b00001110
    ];
    [
      0b00001101;
      0b00010010;
      0b00000000;
      0b00010001;
      0b00011001;
      0b00010101;
      0b00010011;
      0b00010001
    ];
    [
      0b00001000;
      0b00000100;
      0b00001110;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00001110
    ];
    [
      0b00000000;
      0b00000100;
      0b00001110;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00001110
    ];
    [
      0b00000000;
      0b00000100;
      0b00001010;
      0b00000000;
      0b00001110;
      0b00010001;
      0b00010001;
      0b00010001
    ];
    [
      0b00000000;
      0b00001101;
      0b00010010;
      0b00000000;
      0b00001110;
      0b00010001;
      0b00010001;
      0b00010001
    ];
    [
      0b00000000;
      0b00001010;
      0b00000000;
      0b00001110;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00010001
    ];
    [
      0b00000000;
      0b00000000;
      0b00000000;
      0b00010001;
      0b00001010;
      0b00000100;
      0b00001010;
      0b00010001
    ];
    [
      0b00000000;
      0b00001110;
      0b00000100;
      0b00001110;
      0b00010101;
      0b00001110;
      0b00000100;
      0b00001110
    ];
    [
      0b00001000;
      0b00000100;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00001110
    ];
    [
      0b00000010;
      0b00000100;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00001110
    ];
    [
      0b00000100;
      0b00001010;
      0b00000000;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00001110
    ];
    [
      0b00001010;
      0b00000000;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00001110
    ];
    [
      0b00000000;
      0b00000010;
      0b00000100;
      0b00010001;
      0b00001010;
      0b00000100;
      0b00000100;
      0b00000100
    ];
    [
      0b00011000;
      0b00001000;
      0b00001110;
      0b00001001;
      0b00001001;
      0b00001110;
      0b00001000;
      0b00011100
    ];
    [
      0b00000000;
      0b00000110;
      0b00001001;
      0b00001001;
      0b00001110;
      0b00001001;
      0b00001001;
      0b00010110
    ];
    [
      0b00001000;
      0b00000100;
      0b00000000;
      0b00001110;
      0b00000001;
      0b00001111;
      0b00010001;
      0b00001111
    ];
    [
      0b00000010;
      0b00000100;
      0b00000000;
      0b00001110;
      0b00000001;
      0b00001111;
      0b00010001;
      0b00001111
    ];
    [
      0b00000100;
      0b00001010;
      0b00000000;
      0b00001110;
      0b00000001;
      0b00001111;
      0b00010001;
      0b00001111
    ];
    [
      0b00001101;
      0b00010010;
      0b00000000;
      0b00001110;
      0b00000001;
      0b00001111;
      0b00010001;
      0b00001111
    ];
    [
      0b00000000;
      0b00001010;
      0b00000000;
      0b00001110;
      0b00000001;
      0b00001111;
      0b00010001;
      0b00001111
    ];
    [
      0b00000100;
      0b00001010;
      0b00000100;
      0b00001110;
      0b00000001;
      0b00001111;
      0b00010001;
      0b00001111
    ];
    [
      0b00000000;
      0b00000000;
      0b00011010;
      0b00000101;
      0b00001111;
      0b00010100;
      0b00010101;
      0b00001010
    ];
    [
      0b00000000;
      0b00000000;
      0b00001110;
      0b00010000;
      0b00010001;
      0b00001110;
      0b00000100;
      0b00001100
    ];
    [
      0b00001000;
      0b00000100;
      0b00000000;
      0b00001110;
      0b00010001;
      0b00011111;
      0b00010000;
      0b00001110
    ];
    [
      0b00000010;
      0b00000100;
      0b00000000;
      0b00001110;
      0b00010001;
      0b00011111;
      0b00010000;
      0b00001110
    ];
    [
      0b00000100;
      0b00001010;
      0b00000000;
      0b00001110;
      0b00010001;
      0b00011111;
      0b00010000;
      0b00001110
    ];
    [
      0b00000000;
      0b00001010;
      0b00000000;
      0b00001110;
      0b00010001;
      0b00011111;
      0b00010000;
      0b00001110
    ];
    [
      0b00001000;
      0b00000100;
      0b00000000;
      0b00000100;
      0b00001100;
      0b00000100;
      0b00000100;
      0b00001110
    ];
    [
      0b00000010;
      0b00000100;
      0b00000000;
      0b00000100;
      0b00001100;
      0b00000100;
      0b00000100;
      0b00001110
    ];
    [
      0b00000100;
      0b00001010;
      0b00000000;
      0b00000100;
      0b00001100;
      0b00000100;
      0b00000100;
      0b00001110
    ];
    [
      0b00000000;
      0b00001010;
      0b00000000;
      0b00000100;
      0b00001100;
      0b00000100;
      0b00000100;
      0b00001110
    ];
    [
      0b00010100;
      0b00001000;
      0b00010100;
      0b00000010;
      0b00001111;
      0b00010001;
      0b00001110;
      0b00000000;
    ];
    [
      0b00001101;
      0b00010010;
      0b00000000;
      0b00010110;
      0b00011001;
      0b00010001;
      0b00010001;
      0b00010001;
    ];
    [
      0b00001000;
      0b00000100;
      0b00000000;
      0b00001110;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00001110;
    ];
    [
      0b00000010;
      0b00000100;
      0b00000000;
      0b00001110;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00001110;
    ];
    [
      0b00000000;
      0b00000100;
      0b00001010;
      0b00000000;
      0b00001110;
      0b00010001;
      0b00010001;
      0b00001110;
    ];
    [
      0b00000000;
      0b00001101;
      0b00010010;
      0b00000000;
      0b00001110;
      0b00010001;
      0b00010001;
      0b00001110;
    ];
    [
      0b00000000;
      0b00001010;
      0b00000000;
      0b00001110;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00001110;
    ];
    [
      0b00000000;
      0b00000000;
      0b00000100;
      0b00000000;
      0b00011111;
      0b00000000;
      0b00000100;
      0b00000000;
    ];
    [
      0b00000000;
      0b00000010;
      0b00000100;
      0b00001110;
      0b00010101;
      0b00001110;
      0b00000100;
      0b00001000;
    ];
    [
      0b00001000;
      0b00000100;
      0b00000000;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00010011;
      0b00001101;
    ];
    [
      0b00000010;
      0b00000100;
      0b00000000;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00010011;
      0b00001101;
    ];
    [
      0b00000100;
      0b00001010;
      0b00000000;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00010011;
      0b00001101;
    ];
    [
      0b00000000;
      0b00001010;
      0b00000000;
      0b00010001;
      0b00010001;
      0b00010001;
      0b00010011;
      0b00001101;
    ];
    [
      0b00000000;
      0b00000010;
      0b00000100;
      0b00010001;
      0b00010001;
      0b00001111;
      0b00000001;
      0b00001110;
    ];
    [
      0b00000000;
      0b00001100;
      0b00000100;
      0b00000110;
      0b00000101;
      0b00000110;
      0b00000100;
      0b00001110;
    ];
    [
      0b00000000;
      0b00001010;
      0b00000000;
      0b00010001;
      0b00010001;
      0b00001111;
      0b00000001;
      0b00001110;
    ];
  |]
;;

let accents_table = [
  "à", 16;
  "â", 18;
  "ä", 20;
  "ç", 23;
  "è", 24;
  "é", 25;
  "ê", 26;
  "ë", 27;
  "î", 30;
  "ï", 31;
  "ñ", 33;
  "ô", 36;
  "ö", 38;
  "ù", 41;
  "û", 43;
  "ü", 44;
];;

let cgram_state = Array.make 8 0;;

let fix_accents str =
  let re_accents = Pcre.regexp
    ~flags:[ `UTF8 ]
    ("[" ^ String.concat "" (List.map fst accents_table) ^ "]")
  in

  let collect_accents () =
    let accents = Array.to_list (Pcre.extract_all ~rex:re_accents str) in
    let accents = List.map (fun x -> x.(0)) accents in
    List.map (fun c -> List.assoc c accents_table) accents
  in

  let shuffle_cgram () =
    for i = 7 downto 1 do
      let j = Random.int i in
      let t = cgram_state.(i) in
      cgram_state.(i) <- cgram_state.(j);
      cgram_state.(j) <- t
    done;
    Printf.eprintf "Shuffled CGRAM\n%!";
  in

  let write_cgram () =
    for i = 0 to 7 do
      Printf.eprintf "CGRAM position %d charcode %d\n%!"
        i
        cgram_state.(i);
      LCD.new_char i (accents_chars.(cgram_state.(i)))
    done;
    Printf.eprintf "Wrote CGRAM\n%!";
  in

  let accents = collect_accents () in

  let cgram_state_l = Array.to_list cgram_state in
  if List.exists (fun c -> not (List.mem c cgram_state_l)) accents then begin
    Printf.eprintf "Re-programming CGRAM\n";
    if List.length accents >= 8 then
      failwith "Out of CGRAM";
    shuffle_cgram ();
    List.iteri (fun i c -> cgram_state.(i) <- c) accents;
    write_cgram ();
  end;

  let rev_table = List.mapi (fun i x -> x, i) (Array.to_list cgram_state) in

  Pcre.substitute ~rex:re_accents ~subst:(fun c ->
    let offset = List.assoc c accents_table in
    let cgram_pos = List.assoc offset rev_table in
    String.make 1 (Char.chr cgram_pos)
  ) str
;;
    
let fix_accents str =
  try
    fix_accents str
  with Not_found ->
    str
;;
