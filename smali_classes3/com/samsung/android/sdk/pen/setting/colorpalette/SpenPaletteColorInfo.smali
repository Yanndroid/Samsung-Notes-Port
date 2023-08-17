.class public Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mColorName:Ljava/lang/String;

.field private mHsvColor:[F

.field private mOpacity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->mHsvColor:[F

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->mOpacity:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->mHsvColor:[F

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->getColor([F)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->getOpacity()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->mOpacity:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->getColorName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->mColorName:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getColor([F)V
    .locals 3
    .param p1    # [F
        .annotation build Landroidx/annotation/Size;
            value = 0x3L
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->mHsvColor:[F

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getColor()[F
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->mHsvColor:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    return-object v0
.end method

.method public getColorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->mColorName:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->mOpacity:I

    return v0
.end method

.method public setColor([FILjava/lang/String;)V
    .locals 3
    .param p1    # [F
        .annotation build Landroidx/annotation/Size;
            value = 0x3L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->mHsvColor:[F

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->mColorName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->mOpacity:I

    return-void
.end method
