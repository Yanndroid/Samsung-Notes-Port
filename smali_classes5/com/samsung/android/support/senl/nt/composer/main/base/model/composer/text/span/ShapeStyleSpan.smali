.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsBooleanSpan;
.source "SourceFile"


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsBooleanSpan;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public applySPenSpan([ILcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/Size;
            value = 0x2L
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic getType()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsBooleanSpan;->getType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsBooleanSpan;->getValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEnable()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsSpan;->isEnable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsSpan;->setEnable(Z)V

    return-void
.end method

.method public bridge synthetic setValue(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsBooleanSpan;->setValue(Z)V

    return-void
.end method

.method public bridge synthetic toggleValue()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsBooleanSpan;->toggleValue()V

    return-void
.end method
