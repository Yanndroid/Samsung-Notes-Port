.class Lcom/samsung/android/sdk/ocr/MOCRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/ocr/IOCRecognizer;


# static fields
.field private static final TAG:Ljava/lang/String; = "MOCRecgonzier"

.field private static mMapID_MOCR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sdk/ocr/OCRLanguage;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLanguageID:I

.field private mocr:Lcom/samsung/android/ocr/MOCR;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mMapID_MOCR:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sdk/ocr/OCRLanguage;->AUTO:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mMapID_MOCR:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sdk/ocr/OCRLanguage;->ENGLISH:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mMapID_MOCR:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sdk/ocr/OCRLanguage;->FRENCH:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mMapID_MOCR:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sdk/ocr/OCRLanguage;->GERMAN:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mMapID_MOCR:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sdk/ocr/OCRLanguage;->ITALIAN:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mMapID_MOCR:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sdk/ocr/OCRLanguage;->SPANISH:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mMapID_MOCR:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sdk/ocr/OCRLanguage;->KOREAN:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mMapID_MOCR:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sdk/ocr/OCRLanguage;->PORTUGUESE:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mMapID_MOCR:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sdk/ocr/OCRLanguage;->CHINESE:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ocr/OCRLanguage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mocr:Lcom/samsung/android/ocr/MOCR;

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->getMOCRLanguageID(Lcom/samsung/android/sdk/ocr/OCRLanguage;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mLanguageID:I

    new-instance p1, Lcom/samsung/android/ocr/MOCROptions$Builder;

    invoke-direct {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/ocr/MOCROptions$Builder;->setGetCharResult(Z)Lcom/samsung/android/ocr/MOCROptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->build()Lcom/samsung/android/ocr/MOCROptions;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/ocr/MOCR;->getInstance(Lcom/samsung/android/ocr/MOCROptions;)Lcom/samsung/android/ocr/MOCR;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mocr:Lcom/samsung/android/ocr/MOCR;

    iget v0, p0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mLanguageID:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/ocr/MOCR;->initialize(I)I

    return-void
.end method

.method private static getMOCRLanguageID(Lcom/samsung/android/sdk/ocr/OCRLanguage;)I
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mMapID_MOCR:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static isSupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/ocr/MOCR;->isOCRSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MOCRecgonzier"

    const-string v1, "MOCR does not supported!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedLanguage(Lcom/samsung/android/sdk/ocr/OCRLanguage;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mMapID_MOCR:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "MOCRecgonzier"

    const-string v1, "Cancel operation is not supported on MOCR"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mocr:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v0}, Lcom/samsung/android/ocr/MOCR;->deinitialize()V

    return-void
.end method

.method public detect(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z
    .locals 4

    const-string v0, "MOCRecgonzier"

    const-string v1, "MOCRecognizer::detect_ARGB_bmp() Used to MOCR library"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/ocr/MOCRResult$Page;

    invoke-direct {v1}, Lcom/samsung/android/ocr/MOCRResult$Page;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mocr:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/ocr/MOCR;->detect_ARGB_bmp(Landroid/graphics/Bitmap;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MOCRecognizer::detect_ARGB_bmp() MOCR(detect_ARGB_bmp) is Failed! ErrorCode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object p1, v1, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    if-eqz p1, :cond_1

    array-length p1, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    move v2, p1

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {v1, p2}, Lcom/samsung/android/sdk/ocr/MOCRConverter;->convertPage(Lcom/samsung/android/ocr/MOCRResult$Page;Lcom/samsung/android/sdk/ocr/OCRResult;)Lcom/samsung/android/sdk/ocr/OCRResult;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ocr/OCRResult;->logInfo()Z

    goto :goto_1

    :cond_2
    const-string p1, "MOCRecognizer::detect_ARGB_bmp() MOCR(detect_ARGB_bmp) is Failed! There is no detected text block"

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ocr/OCRResult;->getProcessInfo()Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/ocr/OCRResult$ProcessInfo;->setHasText(Z)V

    return v2
.end method

.method public detectBlock(Landroid/graphics/Bitmap;Landroid/graphics/Point;[Landroid/graphics/Point;)Z
    .locals 3

    const-string v0, "MOCRecgonzier"

    const-string v1, "Use MOCR::detectBlock_ARGB_bmp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Input point is not used in MOCR::detectBlock_ARGB_bmp"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mocr:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/ocr/MOCR;->detectBlock_ARGB_bmp(Landroid/graphics/Bitmap;Landroid/graphics/Point;[Landroid/graphics/Point;)I

    move-result p1

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MOCRecognizer::detectBlock_ARGB_bmp() MOCR(detect_ARGB_bmp) is Failed! ErrorCode : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    :try_start_1
    const-string p1, "MOCRecognizer::detectBlock_ARGB_bmp() MOCR(detect_ARGB_bmp) does not Support"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
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

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->detectBlock(Landroid/graphics/Bitmap;Landroid/graphics/Point;[Landroid/graphics/Point;)Z

    move-result p1

    return p1
.end method

.method public detectText(Landroid/graphics/Bitmap;)Z
    .locals 2

    const-string v0, "MOCRecgonzier"

    const-string v1, "MOCRecognizer::detectText_ARGB_bmp() Used to MOCR library"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mocr:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ocr/MOCR;->detectText_ARGB_bmp(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public hasText(Landroid/graphics/Bitmap;)Z
    .locals 2

    const-string v0, "MOCRecgonzier"

    const-string v1, "Deprecated: MOCRecognizer::detectText_ARGB_bmp() Used to MOCR library"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mocr:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ocr/MOCR;->detectText_ARGB_bmp(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public recognize(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z
    .locals 3

    const-string v0, "MOCRecgonzier"

    const-string v1, "MOCRecognizer::process_ARGB_bmp() Used to MOCR library"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOCRecognizer::process_ARGB_bmp() ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mLanguageID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/ocr/MOCRResult$Page;

    invoke-direct {v1}, Lcom/samsung/android/ocr/MOCRResult$Page;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->mocr:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/ocr/MOCR;->process_ARGB_bmp(Landroid/graphics/Bitmap;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v1, p2}, Lcom/samsung/android/sdk/ocr/MOCRConverter;->convertPage(Lcom/samsung/android/ocr/MOCRResult$Page;Lcom/samsung/android/sdk/ocr/OCRResult;)Lcom/samsung/android/sdk/ocr/OCRResult;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ocr/OCRResult;->logInfo()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MOCRecognizer::recognize() MOCR(process_ARGB_bmp) is Failed! ErrorCode : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public recognizeDetectedLines(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->recognize(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z

    move-result p1

    return p1
.end method
