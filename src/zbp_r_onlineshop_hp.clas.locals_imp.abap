CLASS lsc_zr_onlineshop_hp DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

ENDCLASS.

CLASS lsc_zr_onlineshop_hp IMPLEMENTATION.

  METHOD save_modified.

    IF create-zronlineshophp IS NOT INITIAL.

        RAISE ENTITY EVENT ZR_ONLINESHOP_HP~OrderCreated
            FROM VALUE #(
                FOR new_order IN create-zronlineshophp
                ( %key            = new_order-%key
                    %param-ItemName = new_order-Ordereditem )
                ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.

CLASS LHC_ZR_ONLINESHOP_HP DEFINITION INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.
  PRIVATE SECTION.
    METHODS:
      GET_GLOBAL_AUTHORIZATIONS FOR GLOBAL AUTHORIZATION
        IMPORTING
           REQUEST requested_authorizations FOR ZrOnlineshopHp
        RESULT result.
ENDCLASS.

CLASS LHC_ZR_ONLINESHOP_HP IMPLEMENTATION.
  METHOD GET_GLOBAL_AUTHORIZATIONS.
  ENDMETHOD.
ENDCLASS.
