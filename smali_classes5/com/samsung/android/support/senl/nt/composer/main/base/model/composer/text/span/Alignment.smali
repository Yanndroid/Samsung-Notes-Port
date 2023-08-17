.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment$AlignType;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x2

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_NONE:I = -0x1

.field public static final ALIGN_RIGHT:I = 0x1


# instance fields
.field private mAlign:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getDefaultAlign()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->mAlign:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getDefaultAlign()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->mAlign:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->setValue(I)V

    return-void
.end method

.method private static checkValid(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private static getDefaultAlign()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v0

    return v0
.end method

.method public static getStoredValue(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;->getStoredSpan(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->checkValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getDefaultAlign()I

    move-result p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return p0

    :catch_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getDefaultAlign()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getSPenSpan([I)Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;
    .locals 3
    .param p1    # [I
        .annotation build Landroidx/annotation/Size;
            value = 0x2L
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getValue()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;->getType()I

    move-result v0

    return v0
.end method

.method public getValue()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->mAlign:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;->getStoredSpan()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->mAlign:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->checkValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getDefaultAlign()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->mAlign:I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getDefaultAlign()I

    move-result v0

    return v0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->mAlign:I

    return v0
.end method

.method public isCenter()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isEnable()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsSpan;->isEnable()Z

    move-result v0

    return v0
.end method

.method public isLeft()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRight()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public reset()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getDefaultAlign()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->setValue(I)V

    return-void
.end method

.method public bridge synthetic setEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsSpan;->setEnable(Z)V

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->mAlign:I

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsStoredIntegerSpan;->setValue(I)V

    return-void
.end method
