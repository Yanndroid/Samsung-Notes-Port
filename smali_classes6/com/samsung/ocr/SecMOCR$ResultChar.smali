.class public Lcom/samsung/ocr/SecMOCR$ResultChar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ocr/SecMOCR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultChar"
.end annotation


# instance fields
.field public cCorner:[I

.field public cRect:[I

.field public conf:I

.field public confPercentage:I

.field public unicode:C


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/ocr/SecMOCR$ResultChar;->cRect:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/ocr/SecMOCR$ResultChar;->cCorner:[I

    return-void
.end method
