.class public final Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;
.super Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;
.source "SourceFile"


# static fields
.field public static final ALIGN_BOTH:I = 0x3

.field public static final ALIGN_CENTER:I = 0x2

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x1


# instance fields
.field private mAlign:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;->mAlign:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;-><init>(III)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;->mAlign:I

    if-ge p2, p1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    if-ltz p3, :cond_1

    if-le p3, v0, :cond_2

    :cond_1
    const/4 p1, 0x7

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_2
    iput p3, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;->mAlign:I

    return-void
.end method


# virtual methods
.method public getAlignment()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;->mAlign:I

    return v0
.end method

.method public setAlignment(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;->mAlign:I

    return-void
.end method
