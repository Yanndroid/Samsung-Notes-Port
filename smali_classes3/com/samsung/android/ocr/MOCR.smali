.class public abstract Lcom/samsung/android/ocr/MOCR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.samsung.android.ocr.MOCR"

.field public static final aarVersion:Ljava/lang/String; = "1.1.14"

.field private static engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

.field private static volatile mMOCR:Lcom/samsung/android/ocr/MOCR;


# instance fields
.field public initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;->None:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    sput-object v1, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    const-string v1, "AAR(1.1.14)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "Stride.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;->Stride:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    sput-object v0, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v0, "mOCR.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;->SecMOCR:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    sput-object v0, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;->None:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    sput-object v1, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/ocr/MOCR;
    .locals 4

    sget-object v0, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    if-nez v0, :cond_2

    const-class v0, Lcom/samsung/android/ocr/MOCR;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    sget-object v2, Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;->Stride:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/ocr/stride/Stride;->getInstance()Lcom/samsung/android/ocr/stride/Stride;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    sget-object v1, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected STRIDE engine lib version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v3}, Lcom/samsung/android/ocr/MOCR;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , aar version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "1.1.14"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    sget-object v2, Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;->SecMOCR:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/samsung/ocr/SecMOCR;->getInstance()Lcom/samsung/ocr/SecMOCR;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    sget-object v1, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected SecMOCR engine lib version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v3}, Lcom/samsung/android/ocr/MOCR;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , aar version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "1.1.14"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_2
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    return-object v0
.end method

.method public static getInstance(Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;)Lcom/samsung/android/ocr/MOCR;
    .locals 4

    sput-object p0, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;->Stride:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    const-string v1, "1.1.14"

    const-string v2, " , aar version: "

    if-ne p0, v0, :cond_0

    :try_start_0
    const-string p0, "Stride.camera.samsung"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;->None:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    sput-object v0, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/samsung/android/ocr/stride/Stride;->getInstance()Lcom/samsung/android/ocr/stride/Stride;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    sget-object p0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected STRIDE engine lib version: "

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v3}, Lcom/samsung/android/ocr/MOCR;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_0
    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;->SecMOCR:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    if-ne p0, v0, :cond_1

    :try_start_1
    const-string p0, "mOCR.camera.samsung"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;->None:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    sput-object v0, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_2
    invoke-static {}, Lcom/samsung/ocr/SecMOCR;->getInstance()Lcom/samsung/ocr/SecMOCR;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    sget-object p0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected SecMOCR engine lib version: "

    goto :goto_1

    :cond_1
    :goto_3
    sget-object p0, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    return-object p0
.end method

.method public static getInstance(Lcom/samsung/android/ocr/MOCROptions;)Lcom/samsung/android/ocr/MOCR;
    .locals 4

    invoke-static {}, Lcom/samsung/android/ocr/MOCR;->getInstance()Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCROptions;->isForceLang()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v2, 0x0

    const-string v3, "ForceLang_MOCROption"

    invoke-static {v3, v1, v0, v2}, Lcom/samsung/android/ocr/MOCR;->isFeatureSupported(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    const-string v0, "ForceLang Option unavailable for current engine version"

    :goto_0
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object p0, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCROptions;->isRunInverted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    const/16 v2, 0xe

    const-string v3, "RunInverted_MOCROption"

    invoke-static {v3, v1, v0, v2}, Lcom/samsung/android/ocr/MOCR;->isFeatureSupported(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    const-string v0, "RunInverted Option unavailable for current engine version"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ocr/MOCR;->set_options(Lcom/samsung/android/ocr/MOCROptions;)V

    goto :goto_1
.end method

.method public static isFeatureSupported(Ljava/lang/String;III)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v0}, Lcom/samsung/android/ocr/MOCR;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/ocr/a;->a:Lcom/samsung/android/ocr/a;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    if-lt v3, p1, :cond_2

    aget v3, v1, v2

    const/4 v4, 0x1

    if-le v3, p1, :cond_0

    return v4

    :cond_0
    aget p1, v1, v4

    if-lt p1, p2, :cond_2

    aget p1, v1, v4

    if-le p1, p2, :cond_1

    return v4

    :cond_1
    const/4 p1, 0x2

    aget p1, v1, p1

    if-lt p1, p3, :cond_2

    return v4

    :cond_2
    sget-object p1, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " unavailable for engine version "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Please update binary."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isOCRSupport()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    sget-object v1, Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;->None:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    const-string v1, "OCR Unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OCR Supported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " AAR version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1.1.14"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public abstract cvtToLang(I)I
.end method

.method public abstract deinit()V
.end method

.method public declared-synchronized deinitialize()V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    const-string v1, "deinitialize : E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v3}, Lcom/samsung/android/ocr/MOCR;->deinit()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0xf4240

    div-long/2addr v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deinitialize : X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v1, "deinitialize : X :: engine was not initialized"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract detect([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Lcom/samsung/android/ocr/MOCRResult$Page;)I
.end method

.method public abstract detectBlock([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Landroid/graphics/Point;[Landroid/graphics/Point;)I
.end method

.method public abstract detectBlock([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;[Landroid/graphics/Point;)I
.end method

.method public abstract detectBlock_ARGB(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I
.end method

.method public abstract detectBlock_ARGB(Lcom/samsung/android/ocr/MOCRImage;[Landroid/graphics/Point;)I
.end method

.method public declared-synchronized detectBlock_ARGB_bmp(Landroid/graphics/Bitmap;Landroid/graphics/Point;[Landroid/graphics/Point;)I
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detectBlock : E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "detectBlock API"

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x7

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/ocr/MOCR;->isFeatureSupported(Ljava/lang/String;III)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelNotInitError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {v3}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v3

    iget-boolean v4, p0, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/samsung/android/ocr/MOCRImage;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v3

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v3, p1, p2, p3}, Lcom/samsung/android/ocr/MOCR;->detectBlock_ARGB(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I

    move-result v3

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long/2addr p1, v1

    const-wide/32 v1, 0xf4240

    div-long/2addr p1, v1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detectBlock : X("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "detectBlock API unavailable for current engine version"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized detectBlock_ARGB_bmp(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)I
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detectBlock : E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "detectBlock API"

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x7

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/ocr/MOCR;->isFeatureSupported(Ljava/lang/String;III)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelNotInitError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {v3}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v3

    iget-boolean v4, p0, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/samsung/android/ocr/MOCRImage;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v3

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/ocr/MOCR;->detectBlock_ARGB(Lcom/samsung/android/ocr/MOCRImage;[Landroid/graphics/Point;)I

    move-result v3

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long/2addr p1, v1

    const-wide/32 v1, 0xf4240

    div-long/2addr p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detectBlock : X("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "detectBlock API unavailable for current engine version"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract detectText([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;)Z
.end method

.method public abstract detectText_ARGB(Lcom/samsung/android/ocr/MOCRImage;)Z
.end method

.method public declared-synchronized detectText_ARGB_bmp(Landroid/graphics/Bitmap;)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detectText : E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/samsung/android/ocr/MOCRImage;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v3, "detectText API"

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v3, v7, v5, v6}, Lcom/samsung/android/ocr/MOCR;->isFeatureSupported(Ljava/lang/String;III)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v3, p1}, Lcom/samsung/android/ocr/MOCR;->detectText_ARGB(Lcom/samsung/android/ocr/MOCRImage;)Z

    move-result v4

    goto :goto_0

    :cond_0
    const-string v3, "Fallback to old API"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/ocr/MOCRResult$Page;

    invoke-direct {v3}, Lcom/samsung/android/ocr/MOCRResult$Page;-><init>()V

    sget-object v5, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v5, p1, v3}, Lcom/samsung/android/ocr/MOCR;->run_ARGB(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p1

    sget-object v5, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRSuccess:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {v5}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v5

    if-ne p1, v5, :cond_1

    iget p1, v3, Lcom/samsung/android/ocr/MOCRResult$Page;->blockCount:I

    if-lez p1, :cond_2

    move v4, v7

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process failed with error code "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const-wide/32 v1, 0xf4240

    div-long/2addr v5, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detectText : X("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized detectText_byteArr([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;)Z
    .locals 15

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detectText : E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-boolean v4, v1, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const-string v4, "detectText API"

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v4, v8, v6, v7}, Lcom/samsung/android/ocr/MOCR;->isFeatureSupported(Ljava/lang/String;III)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual {v4, v6, v7, v12, v13}, Lcom/samsung/android/ocr/MOCR;->detectText([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;)Z

    move-result v5

    goto :goto_0

    :cond_0
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    const-string v4, "Fallback to old API"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/ocr/MOCRResult$Page;

    invoke-direct {v4}, Lcom/samsung/android/ocr/MOCRResult$Page;-><init>()V

    sget-object v9, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move-object v14, v4

    invoke-virtual/range {v9 .. v14}, Lcom/samsung/android/ocr/MOCR;->run([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result v6

    sget-object v7, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRSuccess:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {v7}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_1

    iget v4, v4, Lcom/samsung/android/ocr/MOCRResult$Page;->blockCount:I

    if-lez v4, :cond_2

    move v5, v8

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Process failed with error code "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detectText : X("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract detect_ARGB(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
.end method

.method public declared-synchronized detect_ARGB_bmp(Landroid/graphics/Bitmap;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detect : E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelNotInitError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {v3}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v3

    iget-boolean v4, p0, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/samsung/android/ocr/MOCRImage;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v3

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/ocr/MOCR;->detect_ARGB(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result v3

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long/2addr p1, v1

    const-wide/32 v1, 0xf4240

    div-long/2addr p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detect : X("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized detect_byteArr([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 12

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detect : E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v4, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelNotInitError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {v4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v4

    iget-boolean v5, v1, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    if-eqz v5, :cond_0

    sget-object v6, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    move-object v7, p1

    move v8, p2

    move v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/ocr/MOCR;->detect([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v5, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detect : X("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMOCREngineType()I
    .locals 1

    sget-object v0, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    invoke-virtual {v0}, Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;->getValue()I

    move-result v0

    return v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract init()I
.end method

.method public abstract init(I)I
.end method

.method public abstract init(Ljava/lang/String;)I
.end method

.method public abstract init(Ljava/lang/String;I)I
.end method

.method public declared-synchronized initialize()I
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    const-string v1, "initialize without lang : E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v3}, Lcom/samsung/android/ocr/MOCR;->init()I

    move-result v3

    sget-object v4, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRSuccess:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {v4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/32 v1, 0xf4240

    div-long/2addr v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize without lang : X("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize(I)I
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    const-string v1, "initialize : E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {p0, p1}, Lcom/samsung/android/ocr/MOCR;->cvtToLang(I)I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/samsung/android/ocr/MOCR;->init(I)I

    move-result p1

    sget-object v3, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRSuccess:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {v3}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v3

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0xf4240

    div-long/2addr v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize : X("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initialize(Ljava/lang/String;)I
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize without lang with modelPath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") : E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v3, p1}, Lcom/samsung/android/ocr/MOCR;->init(Ljava/lang/String;)I

    move-result p1

    sget-object v3, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRSuccess:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {v3}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v3

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0xf4240

    div-long/2addr v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize without lang with modelPath : X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initialize(Ljava/lang/String;I)I
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize with modelPath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") : E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {p0, p2}, Lcom/samsung/android/ocr/MOCR;->cvtToLang(I)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/ocr/MOCR;->init(Ljava/lang/String;I)I

    move-result p1

    sget-object p2, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRSuccess:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p2}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0xf4240

    div-long/2addr v3, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize with modelPath : X "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized process([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 12

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process : E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v4, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelNotInitError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {v4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v4

    iget-boolean v5, v1, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    if-eqz v5, :cond_0

    sget-object v6, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    move-object v7, p1

    move v8, p2

    move v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/ocr/MOCR;->run([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v5, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process : X("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized process_ARGB_bmp(Landroid/graphics/Bitmap;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/ocr/MOCR;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process : E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/ocr/MOCR;->engineType:Lcom/samsung/android/ocr/MOCRConstants$MOCREngineType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelNotInitError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {v3}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v3

    iget-boolean v4, p0, Lcom/samsung/android/ocr/MOCR;->initialized:Z

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/samsung/android/ocr/MOCRImage;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v3

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/ocr/MOCR;->mMOCR:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/ocr/MOCR;->run_ARGB(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result v3

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long/2addr p1, v1

    const-wide/32 v1, 0xf4240

    div-long/2addr p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process : X("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract run([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Lcom/samsung/android/ocr/MOCRResult$Page;)I
.end method

.method public abstract run_ARGB(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
.end method

.method public abstract set_options(Lcom/samsung/android/ocr/MOCROptions;)V
.end method
