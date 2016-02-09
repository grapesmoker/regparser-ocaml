open Core

(*let pretty_print_xml file_stream = 
  file_stream |> Markup.parse_xml |> Markup.signals |> Markup.pretty_print
  |> Markup.write_xml |> Markup.to_channel stdout;;

let pretty_print_xml_string xml_string =
  xml_string |> Markup.string |> Markup.parse_xml |>
    Markup.signals |> Markup.pretty_print |> Markup.write_xml |> Markup.to_channel stdout;;*)

let main () = 
  let len = Array.length Sys.argv in
  if len > 1 then
    begin 
      let filename = Sys.argv.(1) in
      (*let (file_stream, close) = filename |> Markup.file in
      pretty_print_xml file_stream;
      pretty_print_xml_string "<foo>this is a <bar>test</bar> of
  markup</foo>"*)
      let tree = Xml.parse_file filename in
      let tree_string = Xml.to_string tree in
      print_string tree_string
    end;;
                   

let () = 
  main ();;
