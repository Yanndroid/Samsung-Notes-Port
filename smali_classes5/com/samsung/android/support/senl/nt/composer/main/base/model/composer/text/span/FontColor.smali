.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;
.source "SourceFile"


# instance fields
.field private defaultColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;-><init>(I)V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->defaultColor:I

    return-void
.end method


# virtual methods
.method public getDefaultValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->defaultColor:I

    return v0
.end method

.method public getSPenSpan([I)Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/Size;
            value = 0x2L
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->getValue()I

    move-result v2

    const/4 v3, 0x3

    invoke-direct {v0, v1, p1, v3, v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;-><init>(IIII)V

    return-object v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;->getType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;->getValue()I

    move-result v0

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

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->getDefaultValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->setValue(I)V

    return-void
.end method

.method public bridge synthetic setEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsSpan;->setEnable(Z)V

    return-void
.end method

.method public bridge synthetic setValue(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;->setValue(I)V

    return-void
.end method
