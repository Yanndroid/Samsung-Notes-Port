.class public Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextParagraphInfo"
.end annotation


# instance fields
.field public endPos:I

.field public startPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;->startPos:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextParagraphInfo;->endPos:I

    return-void
.end method
