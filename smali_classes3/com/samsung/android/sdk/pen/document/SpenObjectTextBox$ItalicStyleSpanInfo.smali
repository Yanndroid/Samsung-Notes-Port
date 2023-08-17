.class public Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$ItalicStyleSpanInfo;
.super Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItalicStyleSpanInfo"
.end annotation


# instance fields
.field public isItalic:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$ItalicStyleSpanInfo;->isItalic:Z

    return-void
.end method
