.class public Lcom/samsung/ocr/SecMOCR$ResultLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ocr/SecMOCR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultLine"
.end annotation


# instance fields
.field public attrbStyle:I

.field public lCorner:[I

.field public lRect:[I

.field public langType:[I

.field public wordCount:I

.field public words:[Lcom/samsung/ocr/SecMOCR$ResultWord;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/ocr/SecMOCR$ResultLine;->langType:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/ocr/SecMOCR$ResultLine;->lRect:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/ocr/SecMOCR$ResultLine;->lCorner:[I

    return-void
.end method
