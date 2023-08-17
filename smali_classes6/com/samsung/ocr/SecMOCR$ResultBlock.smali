.class public Lcom/samsung/ocr/SecMOCR$ResultBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ocr/SecMOCR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBlock"
.end annotation


# instance fields
.field public blkCorner:[I

.field public blkRect:[I

.field public blockID:I

.field public lineCount:I

.field public lines:[Lcom/samsung/ocr/SecMOCR$ResultLine;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/ocr/SecMOCR$ResultBlock;->blkRect:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/ocr/SecMOCR$ResultBlock;->blkCorner:[I

    return-void
.end method
