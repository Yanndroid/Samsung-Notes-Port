.class public Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$UnderlineStyleSpanInfo;
.super Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnderlineStyleSpanInfo"
.end annotation


# instance fields
.field public isUnderline:Z

.field public reserved1:I

.field public reserved2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$UnderlineStyleSpanInfo;->isUnderline:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$UnderlineStyleSpanInfo;->reserved1:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$UnderlineStyleSpanInfo;->reserved2:I

    return-void
.end method
