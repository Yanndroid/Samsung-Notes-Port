.class public Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$FontNameSpanInfo;
.super Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontNameSpanInfo"
.end annotation


# instance fields
.field public fontName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$TextSpanInfo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox$FontNameSpanInfo;->fontName:Ljava/lang/String;

    return-void
.end method
