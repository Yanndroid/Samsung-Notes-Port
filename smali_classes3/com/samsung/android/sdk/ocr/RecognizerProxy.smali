.class public Lcom/samsung/android/sdk/ocr/RecognizerProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/ocr/IRecognizer;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecognizerProxy"


# instance fields
.field private mOCRLanguage:Lcom/samsung/android/sdk/ocr/OCRLanguage;

.field private mOCRServiceCreator:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

.field private mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

.field private mUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;Lcom/samsung/android/sdk/ocr/OCRLanguage;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_ALL:Lcom/samsung/android/sdk/ocr/OCRType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

    sget-object v0, Lcom/samsung/android/sdk/ocr/OCRLanguage;->AUTO:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRLanguage:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mUUID:Ljava/lang/String;

    const-string v0, "RecognizerProxy"

    const-string v1, "OCR RecognizerProxy(Service) is initialized with version: 3.0.220726"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->checkThread()V

    iput-object p2, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

    iput-object p3, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRLanguage:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mUUID:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RecognizerProxy : UUID : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mUUID:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRServiceCreator:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getConnectedService()Lcom/samsung/android/sdk/ocr/service/IOCRService;

    move-result-object p1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getDefaultBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/ocr/service/IOCRService;->initialize(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "cannot initialize service"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRException$UnsupportedRecognizerException;

    const-string p2, "Cannot initialize OCR Service"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/ocr/OCRException$UnsupportedRecognizerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ocr/RecognizerParams;)V
    .locals 2

    iget-object v0, p1, Lcom/samsung/android/sdk/ocr/RecognizerParams;->context:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/sdk/ocr/RecognizerParams;->ocrType:Lcom/samsung/android/sdk/ocr/OCRType;

    iget-object p1, p1, Lcom/samsung/android/sdk/ocr/RecognizerParams;->language:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;Lcom/samsung/android/sdk/ocr/OCRLanguage;)V

    return-void
.end method

.method private checkServiceStatus()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRServiceCreator:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ocr/OCRException$InvalidUsageException;

    const-string v1, "RecognizerProxy is closed or has not been created"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ocr/OCRException$InvalidUsageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkThread()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "RecognizerProxy"

    const-string/jumbo v1, "used in main thread of RecognizerProxy!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/ocr/OCRException$CallOnMainThreadException;

    const-string v1, "Should use RecognizerProxy in worker thread!"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ocr/OCRException$CallOnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private connectOCRService()Lcom/samsung/android/sdk/ocr/service/IOCRService;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->checkThread()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->checkServiceStatus()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getConnectedService()Lcom/samsung/android/sdk/ocr/service/IOCRService;

    move-result-object v0

    return-object v0
.end method

.method private getBitmapBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ocr/OCRType;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRLanguage:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mUUID:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sdk/ocr/service/OCRServiceBundleUtils;->getBitmapBundle(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private getBundleForHasTextSpecialCase(Landroid/graphics/Bitmap;Z)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ocr/OCRType;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRLanguage:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mUUID:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/samsung/android/sdk/ocr/service/OCRServiceBundleUtils;->getBundleForHasTextSpecialCase(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private getConnectedService()Lcom/samsung/android/sdk/ocr/service/IOCRService;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRServiceCreator:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->connect()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRServiceCreator:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->getService()Lcom/samsung/android/sdk/ocr/service/IOCRService;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ocr/OCRException$InvalidUsageException;

    const-string v1, "Service is not connected"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ocr/OCRException$InvalidUsageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDefaultBundle()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ocr/OCRType;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRLanguage:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mUUID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/ocr/service/OCRServiceBundleUtils;->getDefaultBundle(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static isSupported(Lcom/samsung/android/sdk/ocr/OCRType;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_HANDWRITTEN:Lcom/samsung/android/sdk/ocr/OCRType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->isSupported()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "RecognizerProxy"

    const-string v1, "RecognizerProxy cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->checkThread()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRServiceCreator:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getConnectedService()Lcom/samsung/android/sdk/ocr/service/IOCRService;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getDefaultBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/ocr/service/IOCRService;->cancel(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "RecognizerProxy"

    const-string v1, "RecognizerProxy close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->checkThread()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRServiceCreator:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getConnectedService()Lcom/samsung/android/sdk/ocr/service/IOCRService;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getDefaultBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/ocr/service/IOCRService;->close(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRServiceCreator:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->mOCRServiceCreator:Lcom/samsung/android/sdk/ocr/service/OCRServiceCreator;

    :cond_0
    return-void
.end method

.method public detect(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z
    .locals 2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ocr/RecognizerAPIChecker;->isValidParameter(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->connectOCRService()Lcom/samsung/android/sdk/ocr/service/IOCRService;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getBitmapBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/ocr/service/IOCRService;->detect(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ocr/service/OCRServiceBundleUtils;->getResultFromBundle(Landroid/os/Bundle;Lcom/samsung/android/sdk/ocr/OCRResult;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public detectBlock(Landroid/graphics/Bitmap;Landroid/graphics/Point;[Landroid/graphics/Point;)Z
    .locals 2

    invoke-static {p1, p3}, Lcom/samsung/android/sdk/ocr/RecognizerAPIChecker;->isValidParameter(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->connectOCRService()Lcom/samsung/android/sdk/ocr/service/IOCRService;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getBitmapBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ocr/service/OCRServiceBundleUtils;->putInputPointInBundle(Landroid/os/Bundle;Landroid/graphics/Point;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/ocr/service/IOCRService;->detectBlock(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/samsung/android/sdk/ocr/service/OCRServiceBundleUtils;->getResultFromBundle(Landroid/os/Bundle;[Landroid/graphics/Point;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public detectBlock(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Z
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->detectBlock(Landroid/graphics/Bitmap;Landroid/graphics/Point;[Landroid/graphics/Point;)Z

    move-result p1

    return p1
.end method

.method public detectText(Landroid/graphics/Bitmap;)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/RecognizerAPIChecker;->isValidParameter(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->connectOCRService()Lcom/samsung/android/sdk/ocr/service/IOCRService;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getBitmapBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/ocr/service/IOCRService;->detectText(Landroid/os/Bundle;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->close()V

    return-void
.end method

.method public hasText(Landroid/graphics/Bitmap;)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/RecognizerAPIChecker;->isValidParameter(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->connectOCRService()Lcom/samsung/android/sdk/ocr/service/IOCRService;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getBitmapBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/ocr/service/IOCRService;->hasText(Landroid/os/Bundle;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public hasText(Landroid/graphics/Bitmap;Z)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/RecognizerAPIChecker;->isValidParameter(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->connectOCRService()Lcom/samsung/android/sdk/ocr/service/IOCRService;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getBundleForHasTextSpecialCase(Landroid/graphics/Bitmap;Z)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/ocr/service/IOCRService;->hasText(Landroid/os/Bundle;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public isHandwritten(Landroid/graphics/Bitmap;)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/RecognizerAPIChecker;->isValidParameter(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->connectOCRService()Lcom/samsung/android/sdk/ocr/service/IOCRService;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getBitmapBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/ocr/service/IOCRService;->isHandwritten(Landroid/os/Bundle;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public isPrinted(Landroid/graphics/Bitmap;)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/RecognizerAPIChecker;->isValidParameter(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->connectOCRService()Lcom/samsung/android/sdk/ocr/service/IOCRService;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getBitmapBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/ocr/service/IOCRService;->isPrinted(Landroid/os/Bundle;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public recognize(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z
    .locals 2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ocr/RecognizerAPIChecker;->isValidParameter(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->connectOCRService()Lcom/samsung/android/sdk/ocr/service/IOCRService;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ocr/RecognizerProxy;->getBitmapBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/ocr/service/IOCRService;->recognize(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ocr/service/OCRServiceBundleUtils;->getResultFromBundle(Landroid/os/Bundle;Lcom/samsung/android/sdk/ocr/OCRResult;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1
.end method
