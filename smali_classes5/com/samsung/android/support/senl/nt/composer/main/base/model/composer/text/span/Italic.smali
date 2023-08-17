.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;
.source "SourceFile"


# static fields
.field private static final DEFAULT:Z = false

.field public static final STYLE_ITALIC:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public applySPenSpan([ILcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/Size;
            value = 0x2L
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->getValue()Z

    move-result v2

    const/4 v3, 0x3

    invoke-direct {v0, v1, p1, v3, v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;-><init>(IIIZ)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    return-void
.end method

.method public getSPenSpan([I)Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/Size;
            value = 0x2L
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->getValue()Z

    move-result v2

    const/4 v3, 0x3

    invoke-direct {v0, v1, p1, v3, v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;-><init>(IIIZ)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->setValue(Z)V

    return-void
.end method
