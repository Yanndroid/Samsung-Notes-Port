.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenResource;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPenDescriptionID(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_pen:I

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v0, v2

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Pencil"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Marker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.InkPen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Pencil3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Pencil2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.StraightMarker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.StraightHighlighter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_9
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.InkPen2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_a
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.MosaicPen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_b
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.BrushPen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_c
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Marker4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_d
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Marker3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_e
    const-string v3, "com.samsung.android.sdk.pen.pen.preload.Marker2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_fountain_pen:I

    goto :goto_2

    :pswitch_1
    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_pencil:I

    goto :goto_2

    :pswitch_2
    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_straight_line_marker:I

    goto :goto_2

    :pswitch_3
    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_straight_line_highlighter:I

    goto :goto_2

    :pswitch_4
    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_calligraphy_pen:I

    goto :goto_2

    :pswitch_5
    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_mosaic_pen:I

    goto :goto_2

    :pswitch_6
    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_chinese_brush:I

    goto :goto_2

    :pswitch_7
    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_highlighter_pen:I

    goto :goto_2

    :pswitch_8
    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_marker_pen:I

    :goto_2
    :pswitch_9
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6690cc8b -> :sswitch_e
        -0x6690cc8a -> :sswitch_d
        -0x6690cc89 -> :sswitch_c
        -0x595b991e -> :sswitch_b
        -0x333792d4 -> :sswitch_a
        -0x2469a484 -> :sswitch_9
        0xc15bfcb -> :sswitch_8
        0x16e345c4 -> :sswitch_7
        0x1c80f8f7 -> :sswitch_6
        0x3eb95502 -> :sswitch_5
        0x3eb95503 -> :sswitch_4
        0x5cf7edc2 -> :sswitch_3
        0x61ec1376 -> :sswitch_2
        0x680bd85d -> :sswitch_1
        0x6d60d130 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method public static getPenResourceID(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Pencil"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Marker"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.InkPen"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Pencil3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Pencil2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.StraightMarker"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.StraightHighlighter"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_9
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.InkPen2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_a
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.MosaicPen"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_b
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.BrushPen"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_c
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Marker4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_d
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Marker3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_e
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Marker2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lcom/samsung/android/spen/R$drawable;->fountain_pen:I

    goto :goto_1

    :pswitch_1
    sget v0, Lcom/samsung/android/spen/R$drawable;->pencil:I

    goto :goto_1

    :pswitch_2
    sget v0, Lcom/samsung/android/spen/R$drawable;->markerpen_round_straight:I

    goto :goto_1

    :pswitch_3
    sget v0, Lcom/samsung/android/spen/R$drawable;->highlighter_straight:I

    goto :goto_1

    :pswitch_4
    sget v0, Lcom/samsung/android/spen/R$drawable;->caligraphy_pen:I

    goto :goto_1

    :pswitch_5
    sget v0, Lcom/samsung/android/spen/R$drawable;->pen:I

    goto :goto_1

    :pswitch_6
    sget v0, Lcom/samsung/android/spen/R$drawable;->mosaic_pen:I

    goto :goto_1

    :pswitch_7
    sget v0, Lcom/samsung/android/spen/R$drawable;->caligraphy_brush:I

    goto :goto_1

    :pswitch_8
    sget v0, Lcom/samsung/android/spen/R$drawable;->highlighter:I

    goto :goto_1

    :pswitch_9
    sget v0, Lcom/samsung/android/spen/R$drawable;->markerpen_round:I

    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6690cc8b -> :sswitch_e
        -0x6690cc8a -> :sswitch_d
        -0x6690cc89 -> :sswitch_c
        -0x595b991e -> :sswitch_b
        -0x333792d4 -> :sswitch_a
        -0x2469a484 -> :sswitch_9
        0xc15bfcb -> :sswitch_8
        0x16e345c4 -> :sswitch_7
        0x1c80f8f7 -> :sswitch_6
        0x3eb95502 -> :sswitch_5
        0x3eb95503 -> :sswitch_4
        0x5cf7edc2 -> :sswitch_3
        0x61ec1376 -> :sswitch_2
        0x680bd85d -> :sswitch_1
        0x6d60d130 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_1
    .end packed-switch
.end method
