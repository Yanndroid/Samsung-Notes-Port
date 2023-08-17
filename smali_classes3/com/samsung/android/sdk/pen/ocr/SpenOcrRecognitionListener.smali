.class public Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenOcrRecognitionListener"


# instance fields
.field private mNativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;->mNativeHandle:J

    invoke-direct {p0, p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;->Native_init(Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;->mNativeHandle:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenOcrRecognitionListener is created! mNativeHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;->mNativeHandle:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenOcrRecognitionListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native Native_finalize(J)V
.end method

.method private native Native_init(Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;)J
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;->Native_finalize(J)V

    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;->mNativeHandle:J

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;->close()V

    return-void
.end method

.method public onPageRecognitionCompleted(Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;)V
    .locals 1

    const-string p1, "SpenOcrRecognitionListener"

    const-string v0, "SpenOcrRecognitionListener onPageRecognitionCompleted"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageRecognitionStarted()V
    .locals 2

    const-string v0, "SpenOcrRecognitionListener"

    const-string v1, "SpenOcrRecognitionListener onPageRecognitionStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextBlockDetected(Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;)V
    .locals 1

    const-string p1, "SpenOcrRecognitionListener"

    const-string v0, "SpenOcrRecognitionListener onTextBlockDetected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextLineDetected(Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;)V
    .locals 1

    const-string p1, "SpenOcrRecognitionListener"

    const-string v0, "SpenOcrRecognitionListener onTextLineDetected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextLineRecognized(Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;)V
    .locals 1

    const-string p1, "SpenOcrRecognitionListener"

    const-string v0, "SpenOcrRecognitionListener onTextLineRecognized"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
