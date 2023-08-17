.class public Lcom/samsung/android/sdk/ocr/RecognizerProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecognizerProvider"


# instance fields
.field public mClassifier:Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

.field public final mDataConverter:Lcom/samsung/android/sdk/ocr/DataConverter;

.field public mEngine:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

.field public mMOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

.field public mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

.field public mSOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ocr/RecognizerParams;Lcom/samsung/android/sdk/ocr/RecognizerSupporter;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mEngine:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mClassifier:Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mSOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mMOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    sget-object v0, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_ALL:Lcom/samsung/android/sdk/ocr/OCRType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

    new-instance v0, Lcom/samsung/android/sdk/ocr/DataConverter;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ocr/DataConverter;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mDataConverter:Lcom/samsung/android/sdk/ocr/DataConverter;

    iget-object v0, p1, Lcom/samsung/android/sdk/ocr/RecognizerParams;->ocrType:Lcom/samsung/android/sdk/ocr/OCRType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

    iget-boolean v0, p2, Lcom/samsung/android/sdk/ocr/RecognizerSupporter;->isSOCRSupported:Z

    const-string v1, "RecognizerProvider"

    if-eqz v0, :cond_0

    const-string v0, "SOCR is supported"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;

    iget-object v2, p1, Lcom/samsung/android/sdk/ocr/RecognizerParams;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->whichModelLoader(Z)Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mEngine:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;->createTypeClassifier()Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mClassifier:Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->createSOCRRecognizer(Lcom/samsung/android/sdk/ocr/RecognizerParams;)V

    goto :goto_0

    :cond_0
    const-string v0, "SOCR is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean p2, p2, Lcom/samsung/android/sdk/ocr/RecognizerSupporter;->isMOCRSupported:Z

    if-eqz p2, :cond_1

    const-string p2, "MOCR is supported"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/samsung/android/sdk/ocr/RecognizerParams;->language:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->createMOCRecognizer(Lcom/samsung/android/sdk/ocr/OCRLanguage;)V

    goto :goto_1

    :cond_1
    const-string p1, "MOCR is not supported"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private closeCommonSCORecognizer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mClassifier:Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mClassifier:Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mSOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/sdk/ocr/IOCRecognizer;->destroy()V

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mSOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mEngine:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;->close()V

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mEngine:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

    return-void
.end method

.method private closeMOCRecognizer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mMOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/ocr/IOCRecognizer;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mMOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    return-void
.end method

.method private createMOCRecognizer(Lcom/samsung/android/sdk/ocr/OCRLanguage;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->isSupportedLanguage(Lcom/samsung/android/sdk/ocr/OCRLanguage;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/ocr/MOCRecognizer;-><init>(Lcom/samsung/android/sdk/ocr/OCRLanguage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mMOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "MOCRecognizer does not support language(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecognizerProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mMOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    :goto_0
    return-void
.end method

.method private getHandwrittenTypeRecognizer(Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;)Lcom/samsung/android/sdk/ocr/IOCRecognizer;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mSOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    const-string v1, "RecognizerProvider"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select recognizer by user selected type: OCRType ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->getRecognizer(ZLcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;)Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User selected ocr type is not supported: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private getPrintedTypeRecognizer(Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;)Lcom/samsung/android/sdk/ocr/IOCRecognizer;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mMOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    const-string v1, "RecognizerProvider"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select recognizer by user selected type: OCRType ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->getRecognizer(ZLcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;)Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User selected ocr type is not supported: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public checkRecognizerIsCreated()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mMOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mSOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ocr/OCRException$UnsupportedRecognizerException;

    const-string v1, "Any recognizer has not been created!"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ocr/OCRException$UnsupportedRecognizerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "RecognizerProvider"

    const-string v1, "RecognizerProvider close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->closeMOCRecognizer()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->closeCommonSCORecognizer()V

    return-void
.end method

.method public createSOCRRecognizer(Lcom/samsung/android/sdk/ocr/RecognizerParams;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mEngine:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

    iget-object v1, p1, Lcom/samsung/android/sdk/ocr/RecognizerParams;->language:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->from(Lcom/samsung/android/sdk/ocr/OCRLanguage;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;->isSupportedLanguage(Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ocr/SOCRecognizer;

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mEngine:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/ocr/SOCRecognizer;-><init>(Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;Lcom/samsung/android/sdk/ocr/RecognizerParams;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mSOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/samsung/android/sdk/ocr/RecognizerParams;->language:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "SOCRecognizer does not support language(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecognizerProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mSOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    :goto_0
    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->close()V

    return-void
.end method

.method public getAllTypeRecognizer(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;)Lcom/samsung/android/sdk/ocr/IOCRecognizer;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mMOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    const-string v1, "RecognizerProvider"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mSOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mClassifier:Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

    const-string v2, "Type classifier is not ready"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;->isHandwrittenImage(Landroid/graphics/Bitmap;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select recognizer by type classification: isHandwritten="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->getRecognizer(ZLcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;)Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "Select recognizer for Printed image"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-string p1, "Select recognizer for Handwritten image"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    goto :goto_0
.end method

.method public getRecognizer(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;)Lcom/samsung/android/sdk/ocr/IOCRecognizer;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/ocr/RecognizerProvider$1;->$SwitchMap$com$samsung$android$sdk$ocr$OCRType:[I

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User selected ocr type is not supported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mOCRType:Lcom/samsung/android/sdk/ocr/OCRType;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecognizerProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->getHandwrittenTypeRecognizer(Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;)Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->getPrintedTypeRecognizer(Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;)Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->getAllTypeRecognizer(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;)Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    move-result-object p1

    return-object p1
.end method

.method public getRecognizer(ZLcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;)Lcom/samsung/android/sdk/ocr/IOCRecognizer;
    .locals 0

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->setHandwrittenResult(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mSOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mMOCRecognizer:Lcom/samsung/android/sdk/ocr/IOCRecognizer;

    :goto_0
    return-object p1
.end method

.method public isHandwritten(Landroid/graphics/Bitmap;)Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mClassifier:Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;->isHandwrittenImage(Landroid/graphics/Bitmap;)Z

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v0, "Type Classification(isHandwrittenImage=%s), Time: %d ms"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public isPrinted(Landroid/graphics/Bitmap;)Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/RecognizerProvider;->mClassifier:Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;->isPrintedImage(Landroid/graphics/Bitmap;)Z

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v0, "Type Classification(isPrintedImage=%s), Time: %d ms"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public whichModelLoader(Z)Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;->ASSETS:Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;->PROVIDER:Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    :goto_0
    return-object p1
.end method
