.class public Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenResource;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushPenResource"

.field private static final mSupportPenNameList:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.WaterColorBrush"

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.OilBrush3"

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.BrushPen"

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.Pencil3"

    const-string v4, "com.samsung.android.sdk.pen.pen.preload.Crayon2"

    const-string v5, "com.samsung.android.sdk.pen.pen.preload.Marker2"

    const-string v6, "com.samsung.android.sdk.pen.pen.preload.AirBrushPen"

    const-string v7, "com.samsung.android.sdk.pen.pen.preload.Smudge"

    const-string v8, "com.samsung.android.sdk.pen.pen.preload.ColoredPencil"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenResource;->mSupportPenNameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrushPenViewInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Smudge"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Pencil3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.ColoredPencil"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.WaterColorBrush"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.OilBrush3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.AirBrushPen"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.BrushPen"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Crayon2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Marker2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported pen! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SpenBrushPenResource"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_0
    sget v0, Lcom/samsung/android/spen/R$drawable;->smudge:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_smudge:I

    move v2, v3

    goto :goto_2

    :pswitch_1
    sget v0, Lcom/samsung/android/spen/R$drawable;->brush_pencil:I

    sget v3, Lcom/samsung/android/spen/R$drawable;->brush_pencil_mask:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->brush_pencil_mask_stroke:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_pencil:I

    goto :goto_1

    :pswitch_2
    sget v0, Lcom/samsung/android/spen/R$drawable;->tilt:I

    sget v3, Lcom/samsung/android/spen/R$drawable;->tilt_mask:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->tilt_mask_stroke:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_tilt_pencil:I

    goto :goto_1

    :pswitch_3
    sget v0, Lcom/samsung/android/spen/R$drawable;->water:I

    sget v3, Lcom/samsung/android/spen/R$drawable;->water_mask:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->water_mask_stroke:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_water_color_brush:I

    :goto_1
    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_2

    :pswitch_4
    sget v0, Lcom/samsung/android/spen/R$drawable;->oil:I

    sget v3, Lcom/samsung/android/spen/R$drawable;->oil_mask:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->oil_mask_stroke:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_oil_brush:I

    goto :goto_1

    :pswitch_5
    sget v0, Lcom/samsung/android/spen/R$drawable;->airbrush:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->airbrush_mask:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_air_brush:I

    move v5, v3

    move v3, v1

    move v1, v2

    move v2, v5

    goto :goto_2

    :pswitch_6
    sget v0, Lcom/samsung/android/spen/R$drawable;->cali:I

    sget v3, Lcom/samsung/android/spen/R$drawable;->cali_mask:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->cali_mask_stroke:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_chinese_brush:I

    goto :goto_1

    :pswitch_7
    sget v0, Lcom/samsung/android/spen/R$drawable;->color_pencil:I

    sget v3, Lcom/samsung/android/spen/R$drawable;->color_pencil_mask:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->color_pencil_mask_stroke:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_crayon:I

    goto :goto_1

    :pswitch_8
    sget v0, Lcom/samsung/android/spen/R$drawable;->maker:I

    sget v3, Lcom/samsung/android/spen/R$drawable;->maker_mask:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->maker_mask_stroke:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_marker_pen:I

    goto :goto_1

    :goto_2
    new-instance v4, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v0, v3, v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->setResourceId(III)V

    return-object v4

    :sswitch_data_0
    .sparse-switch
        -0x6690cc8b -> :sswitch_8
        -0x5b75c7d7 -> :sswitch_7
        -0x595b991e -> :sswitch_6
        -0x23da935a -> :sswitch_5
        -0x20a01658 -> :sswitch_4
        -0x1b1c3eb5 -> :sswitch_3
        0x27e0cd6c -> :sswitch_2
        0x3eb95503 -> :sswitch_1
        0x72f3492a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isPenResourceDefaultSupported(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenResource;->mSupportPenNameList:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static setMaskPosition(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;Z)V
    .locals 6

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenName()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41d80000    # 27.0f

    const/high16 v2, 0x44020000    # 520.0f

    const-string v3, "BrushPen"

    const-string v4, "AirBrushPen"

    const/4 v5, 0x0

    if-nez p1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 p1, 0x42040000    # 33.0f

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 v1, 0x42080000    # 34.0f

    const/high16 p1, 0x42480000    # 50.0f

    goto :goto_1

    :cond_2
    const/high16 p1, 0x42640000    # 57.0f

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/high16 v5, 0x43ce0000    # 412.0f

    const/high16 p1, 0x44130000    # 588.0f

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const v1, 0x4422c000    # 651.0f

    const p1, 0x44594000    # 869.0f

    goto :goto_1

    :cond_5
    const/high16 p1, 0x447a0000    # 1000.0f

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v5, v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->setWeight(FFF)V

    :cond_6
    :goto_2
    return-void
.end method
