.class public Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHUCK_BOTTOM:I = 0x2c

.field private static final CHUCK_LEFT:I = 0x20

.field private static final CHUCK_RIGHT:I = 0x28

.field private static final CHUCK_TOP:I = 0x24

.field private static ResourceID:[I

.field private static StringID:[I

.field private static dpi:I

.field private static mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static resources:Landroid/content/res/Resources;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x41

    new-array v0, v0, [I

    sget v1, Lcom/samsung/android/spen/R$drawable;->memo_bullet:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_note_voice_btn_ic_play:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_note_voice_btn_ic_play_dark:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_note_voice_btn_ic_recording:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_note_voice_btn_ic_stop:I

    const/4 v6, 0x4

    aput v1, v0, v6

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_note_voice_btn_ic_menu:I

    const/4 v7, 0x5

    aput v1, v0, v7

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_rec_pause_01:I

    const/4 v8, 0x6

    aput v1, v0, v8

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_rec_pause_02:I

    const/4 v9, 0x7

    aput v1, v0, v9

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_rec_pause_03:I

    const/16 v10, 0x8

    aput v1, v0, v10

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_rec_pause_04:I

    const/16 v11, 0x9

    aput v1, v0, v11

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_rec_pause_05:I

    const/16 v12, 0xa

    aput v1, v0, v12

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_rec_pause_06:I

    const/16 v13, 0xb

    aput v1, v0, v13

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_rec_pause_07:I

    const/16 v14, 0xc

    aput v1, v0, v14

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_rec_pause_08:I

    const/16 v15, 0xd

    aput v1, v0, v15

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_rec_pause_09:I

    const/16 v16, 0xe

    aput v1, v0, v16

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_pause_play_01:I

    const/16 v17, 0xf

    aput v1, v0, v17

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_pause_play_02:I

    const/16 v18, 0x10

    aput v1, v0, v18

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_pause_play_03:I

    const/16 v19, 0x11

    aput v1, v0, v19

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_pause_play_04:I

    const/16 v20, 0x12

    aput v1, v0, v20

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_pause_play_05:I

    const/16 v21, 0x13

    aput v1, v0, v21

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_pause_play_06:I

    const/16 v22, 0x14

    aput v1, v0, v22

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_pause_play_07:I

    const/16 v23, 0x15

    aput v1, v0, v23

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_pause_play_08:I

    const/16 v24, 0x16

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->sdk_vr_pause_play_09:I

    const/16 v24, 0x17

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->native_composer_note_webcard_ic_fail:I

    const/16 v24, 0x18

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->tw_list_icon_circle_mtrl:I

    const/16 v24, 0x19

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->tw_list_icon_minus_mtrl:I

    const/16 v24, 0x1a

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->note_handwriting_toolbar_bg:I

    const/16 v24, 0x1b

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->note_handwriting_toolbar_open_bg:I

    const/16 v24, 0x1c

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->note_handwriting_actionlink_ic_bg:I

    const/16 v24, 0x1d

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->note_handwriting_actionlink_ic_calculator:I

    const/16 v24, 0x1e

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->note_handwriting_actionlink_ic_call:I

    const/16 v24, 0x1f

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->note_handwriting_actionlink_ic_msg:I

    const/16 v24, 0x20

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->note_handwriting_actionlink_ic_web:I

    const/16 v24, 0x21

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->note_preview_handler:I

    const/16 v24, 0x22

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->note_preview_handler_focused:I

    const/16 v24, 0x23

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->note_preview_handler_dark:I

    const/16 v24, 0x24

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_converttext_top:I

    const/16 v24, 0x25

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_converttext_down:I

    const/16 v24, 0x26

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->selection_handler:I

    const/16 v24, 0x27

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->shape_point_edit:I

    const/16 v24, 0x28

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->shape_point_connect:I

    const/16 v24, 0x29

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_ewp_resize:I

    const/16 v24, 0x2a

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_easywriting_back:I

    const/16 v24, 0x2b

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_easywriting_enter:I

    const/16 v24, 0x2c

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_easywriting_handler:I

    const/16 v24, 0x2d

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_easywriting_guide_handler:I

    const/16 v24, 0x2e

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_converting_math:I

    const/16 v24, 0x2f

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_gesture01:I

    const/16 v24, 0x30

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_gesture02:I

    const/16 v24, 0x31

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_gesture03:I

    const/16 v24, 0x32

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->composer_image_not_found:I

    const/16 v24, 0x33

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_cursor_select_handle_left:I

    const/16 v24, 0x34

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_cursor_select_handle_middle:I

    const/16 v24, 0x35

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_cursor_select_handle_right:I

    const/16 v24, 0x36

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->spen_ic_textover_que:I

    const/16 v24, 0x37

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->spen_ic_text_bullet:I

    const/16 v24, 0x38

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->spen_ic_text_check_off:I

    const/16 v24, 0x39

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->spen_ic_text_check_on:I

    const/16 v24, 0x3a

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->drawing:I

    const/16 v24, 0x3b

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_control_delete:I

    const/16 v24, 0x3c

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_control_rotate:I

    const/16 v24, 0x3d

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_page_scroll_btn:I

    const/16 v24, 0x3e

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_send_to_note:I

    const/16 v24, 0x3f

    aput v1, v0, v24

    sget v1, Lcom/samsung/android/spen/R$drawable;->ic_sync:I

    const/16 v24, 0x40

    aput v1, v0, v24

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->ResourceID:[I

    const/16 v0, 0x34

    new-array v0, v0, [I

    sget v1, Lcom/samsung/android/spen/R$string;->voice_rec:I

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/spen/R$string;->voice_play:I

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->voice_cancel:I

    aput v1, v0, v4

    sget v1, Lcom/samsung/android/spen/R$string;->voice_stop:I

    aput v1, v0, v5

    sget v1, Lcom/samsung/android/spen/R$string;->voice_pause:I

    aput v1, v0, v6

    sget v1, Lcom/samsung/android/spen/R$string;->voice_delete:I

    aput v1, v0, v7

    sget v1, Lcom/samsung/android/spen/R$string;->voice_title_prefix:I

    aput v1, v0, v8

    sget v1, Lcom/samsung/android/spen/R$string;->string_loading_dot_dot_dot:I

    aput v1, v0, v9

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_pen_settings:I

    aput v1, v0, v10

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_pen_mode:I

    aput v1, v0, v11

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_transform_into_auto_shape:I

    aput v1, v0, v12

    sget v1, Lcom/samsung/android/spen/R$string;->drawing_menu_erase:I

    aput v1, v0, v13

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_selection_mode:I

    aput v1, v0, v14

    sget v1, Lcom/samsung/android/spen/R$string;->drawing_menu_redo:I

    aput v1, v0, v15

    sget v1, Lcom/samsung/android/spen/R$string;->drawing_menu_undo:I

    aput v1, v0, v16

    sget v1, Lcom/samsung/android/spen/R$string;->composer_ctx_menu_resize_image:I

    aput v1, v0, v17

    sget v1, Lcom/samsung/android/spen/R$string;->drawing_string_selected:I

    aput v1, v0, v18

    sget v1, Lcom/samsung/android/spen/R$string;->drawing_string_not_selected:I

    aput v1, v0, v19

    sget v1, Lcom/samsung/android/spen/R$string;->image_view_more:I

    aput v1, v0, v20

    sget v1, Lcom/samsung/android/spen/R$string;->handwriting_string_zoompad:I

    aput v1, v0, v21

    sget v1, Lcom/samsung/android/spen/R$string;->handwriting_string_web_address:I

    aput v1, v0, v22

    sget v1, Lcom/samsung/android/spen/R$string;->handwriting_string_phone:I

    aput v1, v0, v23

    sget v1, Lcom/samsung/android/spen/R$string;->handwriting_string_email:I

    const/16 v3, 0x16

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->handwriting_string_calculator:I

    const/16 v3, 0x17

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->handwriting_string_extract_text:I

    const/16 v3, 0x18

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->handwriting_string_zoompad_status_on:I

    const/16 v3, 0x19

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->handwriting_string_zoompad_status_off:I

    const/16 v3, 0x1a

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_color_double_tap_and_hold_to_move:I

    const/16 v3, 0x1b

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->voice_assistant_editbox_double_tab_to_edit:I

    const/16 v3, 0x1c

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->voice_assistant_editbox_editing:I

    const/16 v3, 0x1d

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->voice_assistant_editbox:I

    const/16 v3, 0x1e

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->voice_assistant_textbox:I

    const/16 v3, 0x1f

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->voice_assistant_disabled:I

    const/16 v3, 0x20

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->voice_assistant_slider:I

    const/16 v3, 0x21

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->handwriting:I

    const/16 v3, 0x22

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->easy_writing_pad_guide_text:I

    const/16 v3, 0x23

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->easy_writing_pad_btn_next:I

    const/16 v3, 0x24

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->easy_writing_pad_btn_previous:I

    const/16 v3, 0x25

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->easy_writing_pad_btn_enter:I

    const/16 v3, 0x26

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_move_handler:I

    const/16 v3, 0x27

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->math_guide_text_1:I

    const/16 v3, 0x28

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->math_guide_text_2:I

    const/16 v3, 0x29

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->composer_pdf_pages:I

    const/16 v3, 0x2a

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->composer_pdf_1_page:I

    const/16 v3, 0x2b

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->composer_voice_assistant_button:I

    const/16 v3, 0x2c

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->composer_voice_assistant_handle:I

    const/16 v3, 0x2d

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->composer_voice_assistant_category:I

    const/16 v3, 0x2e

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_page_indicator:I

    const/16 v3, 0x2f

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->spen_string_bullet_todo:I

    const/16 v3, 0x30

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->spen_string_bullet_numbering:I

    const/16 v3, 0x31

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->spen_string_bullet_points:I

    const/16 v3, 0x32

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$string;->voice_assistant_easy_writing_pad_focus_area:I

    const/16 v3, 0x33

    aput v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->StringID:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->resources:Landroid/content/res/Resources;

    sput v2, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->dpi:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->mViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native Native_ClearResources()V
.end method

.method private chuckToRect([BLandroid/graphics/Rect;)V
    .locals 4

    const/16 v0, 0x20

    aget-byte v0, p1, v0

    const/16 v1, 0x24

    aget-byte v1, p1, v1

    const/16 v2, 0x28

    aget-byte v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x2c

    aget-byte p1, p1, v3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static forceClearResources()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->Native_ClearResources()V

    return-void
.end method

.method private getRtlNumberString(I)Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRtlTimeString(III)Ljava/lang/String;
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    const-string v2, "%02d:%02d:%02d"

    const-string v3, "%02d:%02d"

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x18

    if-lt v0, v7, :cond_1

    if-lez p1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->resources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-static {p1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-lez p1, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static registerResourceView(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static setResources(Landroid/content/res/Resources;)V
    .locals 1

    sput-object p0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->dpi:I

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v0, p0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->resources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->dpi:I

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->Native_ClearResources()V

    :cond_0
    return-void
.end method

.method public static unregisterResourceView(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->Native_ClearResources()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBitmap(ILandroid/graphics/Rect;Landroid/graphics/Rect;[Z)Landroid/graphics/Bitmap;
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->ResourceID:[I

    array-length v1, v0

    if-ge p1, v1, :cond_8

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->resources:Landroid/content/res/Resources;

    aget v0, v0, p1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/samsung/android/spr/drawable/Spr;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto/16 :goto_2

    :cond_1
    instance-of v1, v0, Lcom/samsung/android/spr/drawable/SprDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/samsung/android/spr/drawable/SprDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto/16 :goto_2

    :cond_2
    instance-of v1, v0, Landroid/graphics/drawable/NinePatchDrawable;

    const-string v2, "SComposer"

    if-eqz v1, :cond_3

    sget-object p3, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->resources:Landroid/content/res/Resources;

    sget-object p4, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->ResourceID:[I

    aget p1, p4, p1

    invoke-static {p3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->chuckToRect([BLandroid/graphics/Rect;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getBitmap ninePatch = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    if-eqz p4, :cond_4

    array-length p2, p4

    if-lez p2, :cond_4

    instance-of p2, v0, Landroid/graphics/drawable/VectorDrawable;

    aput-boolean p2, p4, p1

    :cond_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    goto :goto_1

    :cond_6
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBitmap dstWidth="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dstHeight="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p1, p4

    :cond_7
    :goto_2
    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "native id of bitmap resource is not match with java bitmap resource."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getParam(I)I
    .locals 0

    return p1
.end method

.method public getString(IIZ)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->StringID:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    sget-object p3, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->resources:Landroid/content/res/Resources;

    aget p1, v0, p1

    new-array v0, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p3, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p3, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->resources:Landroid/content/res/Resources;

    aget p1, v0, p1

    new-array v0, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p3, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "native id of string resource is not match with java string resource."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getString(IZ)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->StringID:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->resources:Landroid/content/res/Resources;

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->resources:Landroid/content/res/Resources;

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "native id of string resource is not match with java string resource."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
