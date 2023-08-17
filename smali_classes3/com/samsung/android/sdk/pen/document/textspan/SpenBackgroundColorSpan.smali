.class public final Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;
.super Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;
.source "SourceFile"


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;-><init>(I)V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;->mColor:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;-><init>(IIII)V

    iput p4, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;->mColor:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;->mColor:I

    return v0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;->mColor:I

    return-void
.end method
