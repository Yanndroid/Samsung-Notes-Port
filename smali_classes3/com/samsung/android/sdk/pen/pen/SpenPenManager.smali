.class public Lcom/samsung/android/sdk/pen/pen/SpenPenManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;
    }
.end annotation


# static fields
.field private static final BUILTIN_PEN_LIST:[[Ljava/lang/String;

.field private static final CLASS_NAME_INDEX:I = 0x3

.field private static final ICON_IMAGE_URI_INDEX:I = 0x1

.field private static final PACKAGE_NAME_INDEX:I = 0x2

.field public static final SPEN_AIR_BRUSH_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.AirBrushPen"

.field public static final SPEN_BEAUTIFY:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Beautify"

.field public static final SPEN_BLUR_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.BlurPen"

.field public static final SPEN_BRUSH:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Brush"

.field public static final SPEN_BRUSH_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.BrushPen"

.field public static final SPEN_CHINESE_BRUSH:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.ChineseBrush"

.field public static final SPEN_COLORED_PENCIL:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.ColoredPencil"

.field public static final SPEN_CRAYON:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Crayon"

.field public static final SPEN_CRAYON2:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Crayon2"

.field public static final SPEN_ERASER:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Eraser"

.field public static final SPEN_FADED_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.FadedPen"

.field public static final SPEN_FOUNTAIN_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.FountainPen"

.field public static final SPEN_INK_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.InkPen"

.field public static final SPEN_INK_PEN2:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.InkPen2"

.field public static final SPEN_LASER_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.LaserPen"

.field public static final SPEN_MAGIC_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MagicPen"

.field public static final SPEN_MARKER:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Marker"

.field public static final SPEN_MARKER2:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Marker2"

.field public static final SPEN_MARKER3:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Marker3"

.field public static final SPEN_MARKER4:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Marker4"

.field public static final SPEN_MONTBLANC_FOUNTAIN_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MontblancFountainPen"

.field public static final SPEN_MONTBLANC_OBLIQUE_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MontblancCalligraphyPen"

.field public static final SPEN_MOSAIC_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MosaicPen"

.field public static final SPEN_OBLIQUE_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

.field public static final SPEN_OIL_BRUSH2:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.OilBrush2"

.field public static final SPEN_OIL_BRUSH3:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.OilBrush3"

.field public static final SPEN_PATTERN_IMAGE_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.PatternImagePen"

.field public static final SPEN_PENCIL:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Pencil"

.field public static final SPEN_PENCIL2:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Pencil2"

.field public static final SPEN_PENCIL3:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Pencil3"

.field public static final SPEN_SMUDGE:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Smudge"

.field public static final SPEN_STRAIGHT_HIGHLIGHTER:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.StraightHighlighter"

.field public static final SPEN_STRAIGHT_MARKER:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.StraightMarker"

.field public static final SPEN_TRIANGLE_MOSAIC_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.TriangleMosaicPen"

.field public static final SPEN_WATER_BRUSH:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.WaterColorBrush"

.field private static final VERSION_INDEX:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/pen/SpenPen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x22

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "1"

    const-string v2, "note_brush_water"

    const-string v3, "com.samsung.android.sdk.pen.pen.preload"

    const-string v4, "WaterColorBrush"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const-string v2, "note_brush_oil"

    const-string v4, "OilBrush3"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-string v2, "note_handwriting_setting_pen_06_select"

    const-string v4, "BrushPen"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string v2, "note_brush_pencil"

    const-string v4, "Pencil3"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    const-string v4, "note_brush_color_pencil"

    const-string v5, "Crayon2"

    filled-new-array {v1, v4, v3, v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v0, v6

    const-string v5, "note_handwriting_setting_pen_04_select"

    const-string v6, "InkPen"

    filled-new-array {v1, v5, v3, v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v0, v7

    const-string v6, "InkPen2"

    filled-new-array {v1, v5, v3, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v0, v6

    const-string v5, "note_brush_airbrush"

    const-string v6, "AirBrushPen"

    filled-new-array {v1, v5, v3, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v0, v6

    const-string v5, "note_brush_maker"

    const-string v6, "Marker2"

    filled-new-array {v1, v5, v3, v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    aput-object v6, v0, v7

    const-string v6, "note_handwriting_setting_pen_01_select"

    const-string v7, "FountainPen"

    filled-new-array {v1, v6, v3, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v0, v8

    const-string v7, "note_handwriting_setting_pen_02_select"

    const-string v8, "ObliquePen"

    filled-new-array {v1, v7, v3, v8}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    aput-object v8, v0, v9

    const-string v8, "note_handwriting_setting_pen_03_select"

    const-string v9, "Pencil2"

    filled-new-array {v1, v8, v3, v9}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xb

    aput-object v9, v0, v10

    const-string v9, "Eraser"

    filled-new-array {v1, v5, v3, v9}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xc

    aput-object v9, v0, v10

    const-string v9, "MontblancFountainPen"

    filled-new-array {v1, v6, v3, v9}, [Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0xd

    aput-object v6, v0, v9

    const-string v6, "MontblancCalligraphyPen"

    filled-new-array {v1, v7, v3, v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xe

    aput-object v6, v0, v7

    const-string v6, "Pencil"

    filled-new-array {v1, v8, v3, v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xf

    aput-object v6, v0, v7

    const-string v6, "Crayon"

    filled-new-array {v1, v4, v3, v6}, [Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x10

    aput-object v4, v0, v6

    const-string v4, "note_brush_cali"

    const-string v6, "ChineseBrush"

    filled-new-array {v1, v4, v3, v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x11

    aput-object v6, v0, v7

    const-string v6, "MagicPen"

    filled-new-array {v1, v5, v3, v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x12

    aput-object v6, v0, v7

    const-string v6, "Beautify"

    filled-new-array {v1, v4, v3, v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x13

    aput-object v6, v0, v7

    const-string v6, "Brush"

    filled-new-array {v1, v4, v3, v6}, [Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x14

    aput-object v4, v0, v6

    const-string v4, "note_handwriting_setting_pen_05_select"

    const-string v6, "Marker"

    filled-new-array {v1, v4, v3, v6}, [Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x15

    aput-object v4, v0, v6

    const-string v4, "Smudge"

    filled-new-array {v1, v5, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x16

    aput-object v4, v0, v6

    const-string v4, "ColoredPencil"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x17

    aput-object v4, v0, v6

    const-string v4, "MosaicPen"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x18

    aput-object v4, v0, v6

    const-string v4, "Marker3"

    filled-new-array {v1, v5, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x19

    aput-object v4, v0, v6

    const-string v4, "Marker4"

    filled-new-array {v1, v5, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1a

    aput-object v4, v0, v6

    const-string v4, "TriangleMosaicPen"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1b

    aput-object v4, v0, v6

    const-string v4, "BlurPen"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1c

    aput-object v4, v0, v6

    const-string v4, "PatternImagePen"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1d

    aput-object v4, v0, v6

    const-string v4, "StraightHighlighter"

    filled-new-array {v1, v5, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1e

    aput-object v4, v0, v6

    const-string v4, "StraightMarker"

    filled-new-array {v1, v5, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f

    aput-object v4, v0, v5

    const-string v4, "FadedPen"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    aput-object v4, v0, v5

    const-string v4, "LaserPen"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->BUILTIN_PEN_LIST:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mPenList:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isPenAntiAliasEnabled()Z

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->native_setPenAntiAliasEnabled(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'context\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static isExistedSPen([Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object p0, p0, v1

    const-string v1, "Beautify"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, "SPenChineseBrush"

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/Spen;->isLoadedSpen(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static native native_createPen(Ljava/lang/String;)J
.end method

.method private static native native_destroyPen(J)Z
.end method

.method private static native native_getPenCount()I
.end method

.method private static native native_setPenAntiAliasEnabled(Z)V
.end method

.method public static setPenAntiAliasEnabled()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isPenAntiAliasEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->native_setPenAntiAliasEnabled(Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PenManager mPenList.size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mPenList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mPenList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/pen/SpenPen;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getPenNativeHandle()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->native_destroyPen(J)Z

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->close()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mPenList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public createPen(Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;)Lcom/samsung/android/sdk/pen/pen/SpenPen;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'info\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;
    .locals 4

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->native_createPen(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PenManager"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/pen/SpenPen;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v0, v1, v3}, Lcom/samsung/android/sdk/pen/pen/SpenPen;-><init>(Landroid/content/Context;JI)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mPenList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'className\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createPreviewPen(Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;)Lcom/samsung/android/sdk/pen/pen/SpenPen;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPreviewPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'info\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createPreviewPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;
    .locals 4

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->native_createPen(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPreviewPen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PenManager"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/pen/SpenPen;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {p1, v2, v0, v1, v3}, Lcom/samsung/android/sdk/pen/pen/SpenPen;-><init>(Landroid/content/Context;JI)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mPenList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'className\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroyPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getPenNativeHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyPen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getPenNativeHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getPenNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->native_destroyPen(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mPenList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->native_getPenCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->close()V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : parameter \'pen\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroyPreviewPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->destroyPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V

    return-void
.end method

.method public getPenInfoList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->BUILTIN_PEN_LIST:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    array-length v5, v4

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;

    invoke-direct {v5}, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;-><init>()V

    const/4 v6, 0x3

    aget-object v7, v4, v6

    iput-object v7, v5, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->name:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v6

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    sget-boolean v6, Lcom/samsung/android/sdk/pen/Spen;->IS_SPEN_PRELOAD_MODE:Z

    if-nez v6, :cond_1

    const-string v6, "com.samsung.android.sdk.pen.pen.preload.Beautify"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v5, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    const-string v6, "com.samsung.android.sdk.pen.pen.preload.Brush"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v5, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    const-string v6, "com.samsung.android.sdk.pen.pen.preload.MontblancFountainPen"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v5, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    const-string v6, "com.samsung.android.sdk.pen.pen.preload.MontblancCalligraphyPen"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
