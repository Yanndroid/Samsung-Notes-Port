.class public Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$BackgroundColorSpanInfo;
.super Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundColorSpanInfo"
.end annotation


# instance fields
.field public backgroundColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$BackgroundColorSpanInfo;->backgroundColor:I

    return-void
.end method
