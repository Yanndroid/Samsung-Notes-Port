.class public final Lcom/samsung/android/sdk/pen/document/textspan/SpenParsingStateParagraph;
.super Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;
.source "SourceFile"


# instance fields
.field private mIsParsed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenParsingStateParagraph;->mIsParsed:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;-><init>(III)V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenParsingStateParagraph;->mIsParsed:Z

    return-void
.end method


# virtual methods
.method public isParsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenParsingStateParagraph;->mIsParsed:Z

    return v0
.end method

.method public setParsingState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenParsingStateParagraph;->mIsParsed:Z

    return-void
.end method
