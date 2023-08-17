.class public Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;
.super Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;
.source "SourceFile"


# static fields
.field public static final FONT_SIZE_DEFAULT:D = 50.0

.field public static final TEXT_RECOGNIZE_DEFAULT_FONT_SIZE:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;-><init>()V

    const/16 v0, 0x74e

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mWidth:I

    const/16 v0, 0x52b

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginLeft:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginRight:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginTop:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginBottom:I

    return-void
.end method


# virtual methods
.method public getFontSize(I)D
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getFontSizeDelta()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide v2, 0x400199999999999aL    # 2.2

    mul-double/2addr v0, v2

    double-to-int p1, v0

    int-to-double v0, p1

    return-wide v0
.end method

.method public getSizesRecognize()[Ljava/lang/Integer;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getTextRecognizeDefaultFontSize()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method
