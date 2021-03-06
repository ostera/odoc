(*
 * Copyright (c) 2014 Leo White <lpw25@cl.cam.ac.uk>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *)



module Paths = Model.Paths
module Ident_env = Model.Ident_env



val read_interface: Model.Root.t -> string -> Typedtree.signature ->
  Paths.Identifier.module_ *
  Model.Comment.docs *
  Model.Lang.Signature.t

val read_module_type :
  Ident_env.t ->
  Paths.Identifier.signature ->
  Paths.Identifier.label_parent ->
  int ->
  Typedtree.module_type ->
    Model.Lang.ModuleType.expr

val read_value_description : Ident_env.t ->
  Paths.Identifier.signature ->
  Typedtree.value_description -> Model.Lang.Signature.item

val read_type_declarations : Ident_env.t ->
  Paths.Identifier.signature ->
  Model.Lang.Signature.recursive ->
  Typedtree.type_declaration list ->
  Model.Lang.Signature.item list

val read_module_type_declaration : Ident_env.t ->
  Paths.Identifier.signature ->
  Typedtree.module_type_declaration -> Model.Lang.ModuleType.t

val read_class_type_declarations : Ident_env.t ->
  Paths.Identifier.signature ->
  Typedtree.class_type Typedtree.class_infos list ->
  Model.Lang.Signature.item list
