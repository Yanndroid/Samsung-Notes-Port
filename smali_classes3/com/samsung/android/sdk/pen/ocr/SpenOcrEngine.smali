.class public Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;


# static fields
.field private static final SOCR_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.sdk.ocr"

.field private static final TAG:Ljava/lang/String; = "SpenOcrEngine"

.field private static mSOCRSupport:Z = false


# instance fields
.field private mModelLoader:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;

.field public mModelManager:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;

.field private mNativeHandle:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "SDKRecognitionOCR.spenocr.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mSOCRSupport:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mSOCRSupport:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOCR is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenOcrEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mNativeHandle:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mModelManager:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mModelLoader:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->Native_init()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mNativeHandle:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-string v0, "SpenOcrEngine"

    const-string v1, "SpenOcrEngine::SpenOcrEngine() Failed! (mNativeHandle == 0)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mNativeHandle:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mModelManager:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mModelLoader:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->Native_init()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mNativeHandle:J

    cmp-long v0, v2, v0

    const-string v1, "SpenOcrEngine"

    if-nez v0, :cond_0

    const-string p1, "SpenOcrEngine::SpenOcrEngine() Failed! (mNativeHandle == 0)"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenOcrEngine is created! [mNativeHandle : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mNativeHandle:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] [whichModelLoader :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelManager;

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mNativeHandle:J

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->Native_createModelManager(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelManager;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mModelManager:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;

    invoke-static {p1, v0, p2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory;->createModelLoader(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;)Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mModelLoader:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;->loadCommonDB()Z

    return-void
.end method

.method private static isProviderAvailable(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "SpenOcrEngine"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.samsung.android.sdk.ocr"

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OCRDataProvider Version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    const-string p0, "OCRDataProvider is not found"

    goto :goto_0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mSOCRSupport:Z

    const/4 v1, 0x0

    const-string v2, "SpenOcrEngine"

    if-nez v0, :cond_0

    const-string p0, "SOCR is not supported: so library does not exist."

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->isProviderAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "SOCR is not supported: OCR provider does not exist."

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public native Native_createModelManager(J)J
.end method

.method public native Native_createRecognizer(J)J
.end method

.method public native Native_createTypeClassifier(J)J
.end method

.method public native Native_finalize(J)V
.end method

.method public native Native_getEngineVersion(J)Ljava/lang/String;
.end method

.method public native Native_init()J
.end method

.method public close()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mModelManager:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mModelManager:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->Native_finalize(J)V

    :cond_1
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mNativeHandle:J

    return-void
.end method

.method public createRecognizer()Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->Native_createRecognizer(J)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;-><init>(J)V

    return-object v2

    :cond_0
    const-string v0, "SpenOcrEngine"

    const-string v1, "SpenOcrEngine::createRecognizer() Failed! (mNativeHandle == 0)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public createTypeClassifier()Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/pen/ocr/SpenTypeClassifier;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->Native_createTypeClassifier(J)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenTypeClassifier;-><init>(J)V

    return-object v2

    :cond_0
    const-string v0, "SpenOcrEngine"

    const-string v1, "SpenOcrEngine::createTypeClassifier() Failed! (mNativeHandle == 0)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->close()V

    return-void
.end method

.method public getCachedDBFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mModelLoader:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;->getCachedDBFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->Native_getEngineVersion(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "SpenOcrEngine"

    const-string v1, "SpenOcrEngine::getEngineVersion() Failed! (mNativeHandle == 0)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method

.method public isSupportedLanguage(Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->AUTO:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mModelLoader:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;->getSupportedLanguages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->toLanguageCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public loadLanguageDB(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenOcrEngine loadLanguageDB("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") [mNativeHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mNativeHandle:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenOcrEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mModelLoader:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;->loadLanguageDB(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public releaseCachedDBFilePath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->mModelLoader:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;->releaseCachedDBFilePath(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
