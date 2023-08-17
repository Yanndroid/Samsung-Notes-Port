.class public final Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;
.super Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;
.source "SourceFile"


# instance fields
.field private mSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->mSize:F

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;-><init>(IIII)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->mSize:F

    cmpg-float p1, p4, p1

    if-gez p1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    iput p4, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->mSize:F

    return-void
.end method


# virtual methods
.method public getSize()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->mSize:F

    return v0
.end method

.method public setSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->mSize:F

    return-void
.end method
