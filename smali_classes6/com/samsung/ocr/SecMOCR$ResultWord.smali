.class public Lcom/samsung/ocr/SecMOCR$ResultWord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ocr/SecMOCR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultWord"
.end annotation


# instance fields
.field public attrbStyle:I

.field public charCount:I

.field public chars:[Lcom/samsung/ocr/SecMOCR$ResultChar;

.field public hasSpaceSuffix:I

.field public langType:[I

.field public wCorner:[I

.field public wRect:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/ocr/SecMOCR$ResultWord;->langType:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/ocr/SecMOCR$ResultWord;->wRect:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/ocr/SecMOCR$ResultWord;->wCorner:[I

    return-void
.end method
