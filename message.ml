(** The types of the messages that a thread sends to another. One type of
 * message for everyone. *)

type button =
  | Select
  | Right
  | Down
  | Up
  | Left

type t =
  | ButtonsPressed of button list
  | ButtonPressed of button
  | DisplayImmediate of string
  | DisplayBackground of string
