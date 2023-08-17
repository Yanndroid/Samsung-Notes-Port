.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;
.super Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenIPickerColorTheme;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme$Point3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPickerReverseColorTheme"


# instance fields
.field private final MAX_CURRENT_VALUE:I

.field private mColorMatching:Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;

.field private mPaletteColor:[[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x4b0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->MAX_CURRENT_VALUE:I

    new-instance p1, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->mColorMatching:Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->initPaletteColor()V

    return-void
.end method

.method private copyColor([F[F)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    aget v1, p1, v0

    aput v1, p2, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    aput v1, p2, v0

    const/4 v0, 0x2

    aget p1, p1, v0

    aput p1, p2, v0

    :cond_0
    return-void
.end method

.method private findInPickerColor([F[F)D
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->mColorMatching:Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->matchColor([F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->mColorMatching:Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->getResultColor([F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->mColorMatching:Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->getResultValue()D

    move-result-wide p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->mColorMatching:Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->clearMatchedData()V

    goto :goto_0

    :cond_0
    const-wide p1, 0x4092c00000000000L    # 1200.0

    :goto_0
    return-wide p1
.end method

.method private initPaletteColor()V
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->getPaletteHash()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    const/4 v5, 0x3

    aput v5, v3, v4

    const/4 v6, 0x0

    aput v1, v3, v6

    const-class v1, F

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->mPaletteColor:[[F

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    move v5, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->mPaletteColor:[[F

    aget-object v8, v7, v5

    aget v9, v3, v6

    aput v9, v8, v6

    aget-object v8, v7, v5

    aget v9, v3, v4

    aput v9, v8, v4

    aget-object v7, v7, v5

    aget v8, v3, v2

    aput v8, v7, v2

    add-int/2addr v5, v4

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPaletteColor() size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " length="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->mPaletteColor:[[F

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPickerReverseColorTheme"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
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
.method public close()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->mColorMatching:Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->mPaletteColor:[[F

    return-void
.end method

.method public getColorWithinPicker([F[F)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->setSearchScope(I)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->getColor([F[F)Z

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->setSearchScope(I)V

    return v0
.end method

.method public getContentColor([F[F)Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->setSearchScope(I)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->getColor([F[F)Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->setSearchScope(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public getOldColor([F[F)Z
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->matchColor([F[F)Z

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->getColor([F[F)Z

    const/4 p1, 0x1

    return p1
.end method

.method public matchColor([F[F)Z
    .locals 12

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme$Point3;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme$Point3;-><init>([F)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->findInPickerColor([F[F)D

    move-result-wide v1

    const/4 p1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, p1

    move v5, v3

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->mPaletteColor:[[F

    array-length v8, v7

    const/4 v9, 0x1

    if-ge v5, v8, :cond_3

    if-nez v4, :cond_0

    new-instance v4, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme$Point3;

    aget-object v7, v7, v5

    invoke-direct {v4, v7}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme$Point3;-><init>([F)V

    goto :goto_1

    :cond_0
    aget-object v8, v7, v5

    aget v8, v8, v3

    aget-object v10, v7, v5

    aget v10, v10, v9

    aget-object v7, v7, v5

    const/4 v11, 0x2

    aget v7, v7, v11

    invoke-virtual {v4, v8, v10, v7}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme$Point3;->setColor(FFF)V

    :goto_1
    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme$Point3;->getDistance(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme$Point3;)D

    move-result-wide v7

    const-wide/16 v10, 0x0

    cmpl-double v10, v7, v10

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    cmpl-double v9, v1, v7

    if-lez v9, :cond_2

    move v6, v5

    move-wide v1, v7

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v6

    :goto_2
    if-le v5, p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->mPaletteColor:[[F

    aget-object p1, p1, v5

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;->copyColor([F[F)V

    :cond_4
    const-wide p1, 0x4092c00000000000L    # 1200.0

    cmpl-double p1, v1, p1

    if-eqz p1, :cond_5

    move v3, v9

    :cond_5
    return v3
.end method
