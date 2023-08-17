.class public abstract Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A4_PORTRAIT_HEIGHT:D = 11.69

.field public static final A4_PORTRAIT_WIDTH:D = 8.27

.field public static final DEFAULT_MARGIN_BOTTOM:I = 0x10e

.field public static final DEFAULT_MARGIN_LEFT:I = 0x177

.field public static final DEFAULT_MARGIN_RIGHT:I = 0x177

.field public static final DEFAULT_MARGIN_TOP:I = 0x0

.field public static final FONT_FAMILY:Ljava/lang/String; = "Calibri"

.field public static final LONG_MARGIN_BOTTOM:I = 0x10e

.field public static final LONG_MARGIN_LEFT:I = 0x852

.field public static final LONG_MARGIN_RIGHT:I = 0x852

.field public static final LONG_MARGIN_TOP:I


# instance fields
.field private fontSizeDelta:I

.field public mBgLeftIndentation:D

.field public mBorderColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public mContentTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public mContentTextSize:I

.field public mHeight:I

.field public mMarginBottom:I

.field public mMarginLeft:I

.field public mMarginRight:I

.field public mMarginTop:I

.field public mSizesRecognize:[Ljava/lang/Integer;

.field public mTextRecognizeCounts:[Ljava/lang/Integer;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mContentTextSize:I

    const v1, -0xdadadb

    iput v1, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mContentTextColor:I

    const v1, -0x777778

    iput v1, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mBorderColor:I

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v1, v5

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v1, v5

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v1, v5

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x6

    aput-object v3, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v1, v3

    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mTextRecognizeCounts:[Ljava/lang/Integer;

    const/16 v0, 0x177

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginLeft:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginRight:I

    iput v4, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginTop:I

    const/16 v0, 0x10e

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginBottom:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getSizesRecognize()[Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mSizesRecognize:[Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mBorderColor:I

    return v0
.end method

.method public getContentTextColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mContentTextColor:I

    return v0
.end method

.method public getContentTextSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mContentTextSize:I

    return v0
.end method

.method public abstract getFontSize(I)D
.end method

.method public getFontSizeDelta()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->fontSizeDelta:I

    return v0
.end method

.method public getFontSizeTextRecognize(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mSizesRecognize:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mTextRecognizeCounts:[Ljava/lang/Integer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mSizesRecognize:[Ljava/lang/Integer;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getTextRecognizeDefaultFontSize()I

    move-result p1

    return p1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mHeight:I

    return v0
.end method

.method public getMarginBottom()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginBottom:I

    return v0
.end method

.method public getMarginLeft()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginLeft:I

    return v0
.end method

.method public getMarginRight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginRight:I

    return v0
.end method

.method public getMarginTop()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginTop:I

    return v0
.end method

.method public abstract getSizesRecognize()[Ljava/lang/Integer;
.end method

.method public abstract getTextRecognizeDefaultFontSize()I
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mWidth:I

    return v0
.end method

.method public setFontSizeDelta(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->fontSizeDelta:I

    return-void
.end method

.method public toHexaStringColor(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0xffffff

    and-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "#%06X"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
