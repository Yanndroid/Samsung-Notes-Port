.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;
.source "SourceFile"


# static fields
.field public static final DEFAULT_FONT_MIN_SIZE:I = 0x1

.field public static final DEFAULT_FONT_SIZE:I = 0x11


# instance fields
.field private final deltaSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->deltaSize:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->setEnable(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->deltaSize:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->setEnable(Z)V

    return-void
.end method

.method private getWithinMin(I)I
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->deltaSize:I

    add-int v1, p1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    sub-int/2addr v2, v0

    return v2

    :cond_0
    return p1
.end method


# virtual methods
.method public applySPenSpan([ILcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/Size;
            value = 0x2L
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getValue()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x3

    invoke-direct {v0, v1, p1, v3, v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;-><init>(IIIF)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    return-void
.end method

.method public getAdjustedValue()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getDeltaSize()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDefaultValue()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getDeltaSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->deltaSize:I

    return v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;->getType()I

    move-result v0

    return v0
.end method

.method public getValue()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;->getStoredSpan()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getWithinMin(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public getViewValue()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getDeltaSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic isEnable()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsSpan;->isEnable()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getDefaultValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->setValue(I)V

    return-void
.end method

.method public bridge synthetic setEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsSpan;->setEnable(Z)V

    return-void
.end method

.method public bridge synthetic setValue(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;->setValue(I)V

    return-void
.end method
