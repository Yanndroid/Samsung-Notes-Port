.class public Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenCapturePageImpl"


# instance fields
.field private mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

.field private mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

.field private mIsHyperText:Z

.field private mNativeCapture:J

.field private mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mIsHyperText:Z

    const/16 v0, 0x8

    if-nez p1, :cond_0

    const-string p1, " : context must not be null"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->Native_init()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    new-instance v1, Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    new-instance v1, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    iget-wide v5, v4, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->handle:J

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->getNativeHandle()J

    move-result-wide v7

    move-object v4, p1

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->Native_construct(JLandroid/content/Context;JJ)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    return-void
.end method

.method private static native Native_capturePage(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native Native_capturePageAsVectorDrawing(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native Native_capturePageFile(JLjava/lang/String;)Z
.end method

.method private static native Native_captureRect(JLandroid/graphics/Bitmap;Landroid/graphics/RectF;)Z
.end method

.method private static native Native_captureRectFile(JLandroid/graphics/RectF;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native Native_construct(JLandroid/content/Context;JJ)Z
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init()J
.end method

.method private static native Native_isSupported()Z
.end method

.method private static native Native_setHyperTextViewEnabled(JZ)V
.end method

.method private static native Native_setPageDoc(JLcom/samsung/android/sdk/pen/document/SpenPageDoc;)Z
.end method

.method private static native Native_setPageDocWithoutRedraw(JLcom/samsung/android/sdk/pen/document/SpenPageDoc;)Z
.end method

.method public static isSupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->Native_isSupported()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public capturePage(F)Landroid/graphics/Bitmap;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    invoke-static {v2, v3, p1}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->Native_capturePage(JLandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    :goto_0
    return-object v1
.end method

.method public capturePage(II)Landroid/graphics/Bitmap;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    invoke-static {v2, v3, p1}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->Native_capturePageAsVectorDrawing(JLandroid/graphics/Bitmap;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public capturePage(Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->Native_capturePageFile(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    invoke-static {v2, v3, v0, p1}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->Native_captureRect(JLandroid/graphics/Bitmap;Landroid/graphics/RectF;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    return-object v0

    :catchall_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create bitmap w = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " h = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenCapturePageImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    const-string v0, " : fail createBitmap."

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public captureRect(Landroid/graphics/RectF;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    invoke-static {v2, v3, p1, p2}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->Native_captureRectFile(JLandroid/graphics/RectF;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create bitmap w = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " h = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenCapturePageImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    const-string p2, " : fail createBitmap."

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public close()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mConfiguration:Lcom/samsung/android/sdk/pen/view/SpenConfiguration;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mDisplay:Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    :cond_1
    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->Native_finalize(J)V

    iput-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    return-void
.end method

.method public compressPage(Ljava/lang/String;F)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "SpenCapturePageImpl"

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x9

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->capturePage(F)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v0, :cond_2

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v4

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    :goto_1
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " width = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ratio = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    move-object v2, v4

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_4
    throw p1

    :catch_4
    const/4 p1, 0x7

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :cond_6
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ratio = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isHyperTextViewEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mIsHyperText:Z

    return v0
.end method

.method public setHyperTextViewEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mIsHyperText:Z

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->Native_setHyperTextViewEnabled(JZ)V

    return-void
.end method

.method public setPageDoc(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "SpenCapturePageImpl"

    const-string/jumbo v0, "setPageDoc is closed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->Native_setPageDoc(JLcom/samsung/android/sdk/pen/document/SpenPageDoc;)Z

    return-void
.end method

.method public setPageDocWithoutRedraw(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "SpenCapturePageImpl"

    const-string/jumbo v0, "setPageDoc is closed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->mNativeCapture:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->Native_setPageDocWithoutRedraw(JLcom/samsung/android/sdk/pen/document/SpenPageDoc;)Z

    return-void
.end method
