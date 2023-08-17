.class public Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;


# static fields
.field private static final STANDARD_AREA_MAX:F = 0.6f

.field private static final STANDARD_AREA_MIN:F = 0.4f

.field private static final TABLE_LIST_SIZE:I = 0x15

.field private static final TAG:Ljava/lang/String; = "SpenReverseUIColorTheme"


# instance fields
.field public final SCOPE_ALL:I

.field public final SCOPE_PALETTE:I

.field public final SCOPE_PICKER:I

.field public final SCOPE_REVERSER_LIGHT:I

.field private mPaletteColorHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPickerColorHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchScope:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->SCOPE_PICKER:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->SCOPE_PALETTE:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->SCOPE_REVERSER_LIGHT:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->SCOPE_ALL:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mSearchScope:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mPickerColorHash:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mPaletteColorHash:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->initPickerHash(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->initPaletteHash(Landroid/content/Context;)V

    return-void
.end method

.method private GetColorByLightControl(II)I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorUtil;->RGBToHSL(I[F)V

    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3ecccccd    # 0.4f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_0

    aget v2, v0, v1

    const v3, 0x3f19999a    # 0.6f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    aget v2, v0, v1

    sub-float/2addr p2, v2

    aput p2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorUtil;->HSLToRGB([F)I

    move-result p2

    :goto_0
    shl-int/lit8 p1, p1, 0x18

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    const v0, 0xffffff

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    return p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private containsScope(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mSearchScope:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private findColor(Ljava/util/HashMap;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    shl-int/lit8 p2, p2, 0x18

    const/high16 p3, -0x1000000

    and-int/2addr p2, p3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p3, 0xffffff

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private initPaletteHash(Landroid/content/Context;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x15

    if-gt v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "spen_setting_swatch_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "array"

    invoke-virtual {v0, v2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "spen_setting_swatch_adaptive_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v2, :cond_1

    if-lez v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mPaletteColorHash:Ljava/util/HashMap;

    aget v6, v2, v4

    and-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v3, v4

    and-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initPickerHash(Landroid/content/Context;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "spen_adaptive_light_color"

    const-string v2, "array"

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v3, "spen_adaptive_dark_color"

    invoke-virtual {v0, v3, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-lez v1, :cond_1

    if-lez v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    move v5, v4

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    aget v6, v1, v5

    and-int/lit8 v6, v6, -0x1

    aget v7, v3, v5

    and-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mPickerColorHash:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mPickerColorHash:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "spen_adaptive_standard_color"

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    :goto_1
    array-length v0, p1

    if-ge v4, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mPickerColorHash:Ljava/util/HashMap;

    aget v1, p1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mPickerColorHash:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mPaletteColorHash:Ljava/util/HashMap;

    return-void
.end method

.method public getColor(I)I
    .locals 9

    const v0, 0xffffff

    and-int/2addr v0, p1

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->containsScope(I)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "SpenReverseUIColorTheme"

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mPaletteColorHash:Ljava/util/HashMap;

    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->findColor(Ljava/util/HashMap;II)I

    move-result v2

    if-eq v2, v5, :cond_0

    const-string v7, "getColor() :: Find in Palette!"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    goto :goto_0

    :cond_0
    move v2, p1

    move v7, v3

    :goto_0
    if-nez v7, :cond_1

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->containsScope(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mPickerColorHash:Ljava/util/HashMap;

    invoke-direct {p0, v8, v1, v0}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->findColor(Ljava/util/HashMap;II)I

    move-result v8

    if-eq v8, v5, :cond_1

    const-string v2, "getColor() :: Find in Picker!"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    move v2, v8

    :cond_1
    if-nez v7, :cond_2

    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->containsScope(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->GetColorByLightControl(II)I

    move-result v2

    const-string v0, "getColor() :: Find by LightControl!"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isFind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [Ljava/lang/Object;

    and-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, " #%08X"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [Ljava/lang/Object;

    and-int/lit8 v5, v2, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getColor([F[F)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorUtil;->HSVToColor([F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->getColor(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x1

    return p1
.end method

.method public getPaletteHash()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mPaletteColorHash:Ljava/util/HashMap;

    return-object v0
.end method

.method public isContainsPickerColor(I)Z
    .locals 2

    const v0, 0xffffff

    and-int/2addr v0, p1

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mPickerColorHash:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->findColor(Ljava/util/HashMap;II)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setSearchScope(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;->mSearchScope:I

    return-void
.end method
