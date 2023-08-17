.class public final Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;
.super Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;
.source "SourceFile"


# static fields
.field public static final TYPE_PERCENT:I = 0x1

.field public static final TYPE_PIXEL:I


# instance fields
.field private mSpacing:F

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->mType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->mSpacing:F

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;-><init>(III)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->mType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->mSpacing:F

    const/4 v1, 0x3

    if-ge p2, p1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    if-nez p3, :cond_1

    cmpg-float p1, p4, v0

    if-gez p1, :cond_3

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    if-ne p3, p1, :cond_2

    cmpg-float p1, p4, v0

    if-gtz p1, :cond_3

    goto :goto_0

    :cond_2
    const/4 p1, 0x7

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_3
    :goto_1
    iput p3, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->mType:I

    iput p4, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->mSpacing:F

    return-void
.end method


# virtual methods
.method public getLineSpacing()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->mSpacing:F

    return v0
.end method

.method public getLineSpacingType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->mType:I

    return v0
.end method

.method public setLineSpacing(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x3

    if-gez v0, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->mType:I

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->mType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->mSpacing:F

    return-void
.end method

.method public setLineSpacingType(I)V
    .locals 2

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->mType:I

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->mSpacing:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenLineSpacingParagraph;->mSpacing:F

    :cond_2
    return-void
.end method
