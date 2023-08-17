.class public Lcom/samsung/ocr/SecMOCR$ResultPage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ocr/SecMOCR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultPage"
.end annotation


# instance fields
.field public blockCount:I

.field public blocks:[Lcom/samsung/ocr/SecMOCR$ResultBlock;

.field public code:I

.field public docuType:I

.field public rotateAngle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
