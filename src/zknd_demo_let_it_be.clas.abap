CLASS zknd_demo_let_it_be DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zknd_demo_let_it_be IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    TYPES text TYPE STANDARD TABLE OF string WITH EMPTY KEY.

    out->write(
     VALUE text( LET it = `be` IN
                   ( |To { it } is to do|          )
                   ( |To { it }, or not to { it }| )
                   ( |To do is to { it }|          )
                   ( |Do { it } do { it } do|      ) )
    ).


  ENDMETHOD.

ENDCLASS.
