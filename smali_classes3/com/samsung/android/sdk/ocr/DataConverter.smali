.class public Lcom/samsung/android/sdk/ocr/DataConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataConverter"


# instance fields
.field private final mMaxImageWidthOrHeight:I

.field private mScale:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/ocr/DataConverter;->mScale:F

    iput p1, p0, Lcom/samsung/android/sdk/ocr/DataConverter;->mMaxImageWidthOrHeight:I

    return-void
.end method


# virtual methods
.method public convertResultScale(Lcom/samsung/android/sdk/ocr/OCRResult;)Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/ocr/DataConverter;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ocr/OCRResult;->scale(F)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/sdk/ocr/DataConverter;->mMaxImageWidthOrHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "DataConverter"

    const/4 v7, 0x1

    if-le v2, v3, :cond_0

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/sdk/ocr/DataConverter;->mScale:F

    int-to-float v2, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v8, v1

    mul-float/2addr v8, v3

    float-to-int v3, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v5

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x4

    iget v1, p0, Lcom/samsung/android/sdk/ocr/DataConverter;->mScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v8, v0

    const-string v0, "Resizing: (%d, %d) => (%d, %d) (scale=%.1f)"

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v2, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/samsung/android/sdk/ocr/DataConverter;->mScale:F

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    const-string v0, "Resizing: (%d, %d) => No need to resize"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
