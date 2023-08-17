.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;
.super Lcom/samsung/android/sdk/pen/setting/pencommon/SpenUIPolicy;
.source "SourceFile"


# static fields
.field public static final CHANGE_TYPE_COLOR:I = 0x4

.field public static final CHANGE_TYPE_INVALID:I = -0x1

.field public static final CHANGE_TYPE_NONE:I = 0x0

.field public static final CHANGE_TYPE_PEN:I = 0x1

.field public static final CHANGE_TYPE_SIZE:I = 0x2

.field private static final MARKER_ALPHA_VALUE:I = 0x73

.field private static final PENCIL2_ALPHA_VALUE:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "SpenPenUIPolicy"

.field private static final mDefaultPenNameList:[Ljava/lang/String;

.field private static final mFixedAlphaValue:[I

.field private static final mPenWithFixedAlpha:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.InkPen2"

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.Pencil2"

    const-string v4, "com.samsung.android.sdk.pen.pen.preload.BrushPen"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;->mDefaultPenNameList:[Ljava/lang/String;

    const-string v0, "Marker"

    const-string v1, "Pencil2"

    const-string v2, "StraightHighlighter"

    const-string v3, "StraightMarker"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;->mPenWithFixedAlpha:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;->mFixedAlphaValue:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x73
        0xa0
        0x73
        0x73
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenUIPolicy;-><init>()V

    return-void
.end method

.method public static checkPenColor(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 7

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenUIPolicy;->isChangedPenColor(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;->perfectlyTransparent(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v5, "Marker"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v5, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v2, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v2, v5}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;->getCorrectPenColor(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    if-nez v0, :cond_3

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    return v3
.end method

.method public static checkPenInfo(Landroid/content/Context;Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)I
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Brush"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.MontblancFountainPen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.MontblancCalligraphyPen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    iput-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    move v0, v1

    :goto_1
    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;->isUsingPen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;->checkPenColor(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result v2

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;->checkPenSize(Landroid/content/Context;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidPenInfo() changeType="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isChangedColor="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isChangedSize="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "SpenPenUIPolicy"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_3

    return v0

    :cond_3
    if-eqz v2, :cond_4

    or-int/lit8 v0, v0, 0x4

    :cond_4
    if-eqz p0, :cond_5

    or-int/lit8 v0, v0, 0x2

    :cond_5
    return v0
.end method

.method public static checkPenSize(Landroid/content/Context;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenUIPolicy;->isChangedPenSize(Landroid/content/Context;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z

    move-result v0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;->setRepresentativeLevel(Landroid/content/Context;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static getCorrectPenColor(Ljava/lang/String;I)I
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;->mPenWithFixedAlpha:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;->mFixedAlphaValue:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p1

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getPenNameList(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;->mDefaultPenNameList:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getSizeLevel(Ljava/lang/String;I)I
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->getRepresentativeLevel(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getUIStage(Ljava/lang/String;I)I
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->getLevelIndex(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isUsingPen(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;->getPenNameList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static perfectlyTransparent(I)Z
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setRepresentativeLevel(Landroid/content/Context;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z
    .locals 3

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->getLevelIndex(Ljava/lang/String;I)I

    move-result v0

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-ltz v0, :cond_0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->getRepresentativeLevel(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-eq v1, v0, :cond_0

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToDpSize(Landroid/content/Context;Ljava/lang/String;I)F

    move-result p0

    iput p0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
