.class public Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$BoldStyleSpanInfo;
.super Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoldStyleSpanInfo"
.end annotation


# instance fields
.field public isBold:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$BoldStyleSpanInfo;->isBold:Z

    return-void
.end method
