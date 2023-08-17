.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPenSizePolicy"

.field public static final UX_PEN_SIZE_STEP:I = 0x5

.field private static final mInkSizeBoundary:[I

.field private static final mInkSizeLevel:[I

.field private static final mInkSizeRatio:[F

.field private static final mPenSizeBoundary:[I

.field private static final mPenSizeLevel:[I

.field private static final mPenSizeRatio:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mPenSizeBoundary:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mInkSizeBoundary:[I

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mPenSizeLevel:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mInkSizeLevel:[I

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mPenSizeRatio:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mInkSizeRatio:[F

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0x26
        0x3f
        0x58
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x11
        0x27
        0x4d
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x19
        0x32
        0x4b
        0x64
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x9
        0x18
        0x35
        0x64
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3db851ec    # 0.09f
        0x3e75c28f    # 0.24f
        0x3f07ae14    # 0.53f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLevelIndex(Ljava/lang/String;I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mPenSizeBoundary:[I

    array-length v0, v0

    const-string v1, "InkPen"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mPenSizeBoundary:[I

    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget p0, p0, v1

    if-ge p1, p0, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mInkSizeBoundary:[I

    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget p0, p0, v1

    if-ge p1, p0, :cond_2

    :goto_2
    move v0, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return v0
.end method

.method public static getRatio(Ljava/lang/String;I)F
    .locals 1

    if-ltz p1, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mPenSizeLevel:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "InkPen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mPenSizeRatio:[F

    aget p0, p0, p1

    return p0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mInkSizeRatio:[F

    aget p0, p0, p1

    return p0

    :cond_2
    :goto_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public static getRepresentativeLevel(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "InkPen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mPenSizeLevel:[I

    aget p0, p0, p1

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mInkSizeLevel:[I

    aget p0, p0, p1

    return p0
.end method

.method public static getSizeDp(Ljava/lang/String;IFF)F
    .locals 0

    sub-float/2addr p3, p2

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->getRatio(Ljava/lang/String;I)F

    move-result p0

    mul-float/2addr p3, p0

    add-float/2addr p2, p3

    return p2
.end method

.method public static getSizePx(Ljava/lang/String;IFFI)F
    .locals 3

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->getSizeDp(Ljava/lang/String;IFF)F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "## name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " index="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " min="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " max="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " dp="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " densityDpi="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " changeToPx="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p0, p4

    mul-float/2addr v0, p0

    const/high16 p0, 0x43200000    # 160.0f

    div-float/2addr v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpenPenSizePolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static setPenSizeDp(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;FF)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->getLevelIndex(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->mPenSizeLevel:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-eqz v2, :cond_2

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->getRepresentativeLevel(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v1, v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePolicy;->getSizeDp(Ljava/lang/String;IFF)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    :cond_2
    :goto_0
    return-void
.end method
