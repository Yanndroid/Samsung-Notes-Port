.class public Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$LineSpacingParagraphInfo;
.super Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineSpacingParagraphInfo"
.end annotation


# instance fields
.field public lineSpacing:F

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$LineSpacingParagraphInfo;->type:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$LineSpacingParagraphInfo;->lineSpacing:F

    return-void
.end method
