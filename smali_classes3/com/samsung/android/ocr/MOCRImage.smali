.class public Lcom/samsung/android/ocr/MOCRImage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_WIDTH:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "MOCRImage"


# instance fields
.field private mByteArr:[B

.field private mHeight:I

.field private mImageFormat:I

.field private mScale:F

.field private mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/ocr/MOCRImage;->mScale:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ocr/MOCRImage;->mHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ocr/MOCRImage;->mWidth:I

    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->RGBA8888:Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    invoke-virtual {v0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ocr/MOCRImage;->mImageFormat:I

    invoke-direct {p0, p1}, Lcom/samsung/android/ocr/MOCRImage;->resizeBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ocr/MOCRImage;->mHeight:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/ocr/MOCRImage;->mByteArr:[B

    return-void
.end method

.method private constructor <init>([BIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/ocr/MOCRImage;->mScale:F

    iput-object p1, p0, Lcom/samsung/android/ocr/MOCRImage;->mByteArr:[B

    iput p2, p0, Lcom/samsung/android/ocr/MOCRImage;->mHeight:I

    iput p3, p0, Lcom/samsung/android/ocr/MOCRImage;->mWidth:I

    iput p4, p0, Lcom/samsung/android/ocr/MOCRImage;->mImageFormat:I

    return-void
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/samsung/android/ocr/MOCRImage;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/ocr/MOCRImage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bitmap format not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Lcom/samsung/android/ocr/MOCRImage;

    invoke-direct {v0, p0}, Lcom/samsung/android/ocr/MOCRImage;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_2
    :goto_0
    new-instance v0, Lcom/samsung/android/ocr/MOCRImage;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/ocr/MOCRImage;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static fromByteArray([BIII)Lcom/samsung/android/ocr/MOCRImage;
    .locals 1

    new-instance v0, Lcom/samsung/android/ocr/MOCRImage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/ocr/MOCRImage;-><init>([BIII)V

    return-object v0
.end method

.method private resizeBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    iget v0, p0, Lcom/samsung/android/ocr/MOCRImage;->mWidth:I

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    int-to-float v0, v0

    const/high16 v2, 0x45800000    # 4096.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/ocr/MOCRImage;->mScale:F

    iget v2, p0, Lcom/samsung/android/ocr/MOCRImage;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/samsung/android/ocr/MOCRImage;->mHeight:I

    iput v1, p0, Lcom/samsung/android/ocr/MOCRImage;->mWidth:I

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getByte()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRImage;->mByteArr:[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/ocr/MOCRImage;->mHeight:I

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/ocr/MOCRImage;->mImageFormat:I

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/ocr/MOCRImage;->mScale:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/ocr/MOCRImage;->mWidth:I

    return v0
.end method
