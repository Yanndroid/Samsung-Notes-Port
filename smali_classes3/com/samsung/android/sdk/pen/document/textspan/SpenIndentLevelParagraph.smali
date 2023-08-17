.class public Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;
.super Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;
.source "SourceFile"


# static fields
.field public static final DIRECTION_LTR:I = 0x1

.field public static final DIRECTION_MAX:I = 0x3

.field public static final DIRECTION_NONE:I = 0x0

.field public static final DIRECTION_RTL:I = 0x2


# instance fields
.field private mDirection:I

.field private mLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->mLevel:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->mDirection:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;-><init>(III)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->mDirection:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->mLevel:I

    return-void
.end method


# virtual methods
.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->mDirection:I

    return v0
.end method

.method public getIndentLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->mLevel:I

    return v0
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->mDirection:I

    return-void
.end method

.method public setIndentLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->mLevel:I

    return-void
.end method
