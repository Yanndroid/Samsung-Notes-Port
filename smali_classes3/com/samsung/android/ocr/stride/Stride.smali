.class public Lcom/samsung/android/ocr/stride/Stride;
.super Lcom/samsung/android/ocr/MOCR;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ocr/stride/Stride$IconResult;
    }
.end annotation


# static fields
.field private static final NO_LANG:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Stride"

.field private static volatile stride:Lcom/samsung/android/ocr/stride/Stride;


# instance fields
.field private lang:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/ocr/MOCR;-><init>()V

    return-void
.end method

.method private static synchronized native Close()V
.end method

.method private static synchronized native Detect(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
.end method

.method private static synchronized native DetectBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I
.end method

.method public static synchronized native DetectIcon(Lcom/samsung/android/ocr/MOCRImage;)[Lcom/samsung/android/ocr/stride/Stride$IconResult;
.end method

.method private static synchronized native DetectScript(Lcom/samsung/android/ocr/MOCRImage;)I
.end method

.method private static synchronized native DetectScriptAll(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
.end method

.method private static synchronized native DetectText(Lcom/samsung/android/ocr/MOCRImage;)Z
.end method

.method private static synchronized native FreeDetectBlock()I
.end method

.method private static synchronized native GetVersion()Ljava/lang/String;
.end method

.method private static synchronized native Init(Ljava/lang/String;)I
.end method

.method private static synchronized native Init(Ljava/lang/String;I)I
.end method

.method public static synchronized native Orientation(Lcom/samsung/android/ocr/MOCRImage;)I
.end method

.method private static synchronized native Recognize(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
.end method

.method private Recognize_Java(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 16

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/ocr/stride/Stride;->Recognize(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRSuccess:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {v1}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->validateEmailLine(Lcom/samsung/android/ocr/MOCRResult$Page;)V

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->validateURLLine(Lcom/samsung/android/ocr/MOCRResult$Page;)V

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->validatePhoneLine(Lcom/samsung/android/ocr/MOCRResult$Page;)V

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->correctPipeVsI(Lcom/samsung/android/ocr/MOCRResult$Page;)V

    :cond_0
    move-object/from16 v1, p0

    iget v2, v1, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    invoke-static {v2}, Lcom/samsung/android/ocr/MOCRLang;->isArabic(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v2, p2

    iget-object v2, v2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    iget-object v6, v6, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    iget-object v10, v9, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length v11, v10

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_2
    if-ge v13, v11, :cond_2

    aget-object v15, v10, v13

    iget-object v4, v15, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/ocr/stride/lang/UnicodeLangDetector;->isArabic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v14, v15, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v14, "\\r"

    const-string v12, ""

    invoke-virtual {v4, v14, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    const/4 v14, 0x0

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    if-nez v14, :cond_3

    const/4 v4, 0x0

    :goto_3
    iget-object v10, v9, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length v11, v10

    div-int/lit8 v11, v11, 0x2

    if-ge v4, v11, :cond_3

    aget-object v11, v10, v4

    array-length v12, v10

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    sub-int/2addr v12, v4

    aget-object v12, v10, v12

    aput-object v12, v10, v4

    array-length v12, v10

    sub-int/2addr v12, v13

    sub-int/2addr v12, v4

    aput-object v11, v10, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public static synchronized native SetFileNameForDebug(Ljava/lang/String;)V
.end method

.method private static synchronized native SetOptions(Lcom/samsung/android/ocr/MOCROptions;)V
.end method

.method private getDeviceLang()I
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/ocr/MOCRLang;->getLangFromLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/samsung/android/ocr/stride/Stride;
    .locals 2

    sget-object v0, Lcom/samsung/android/ocr/stride/Stride;->stride:Lcom/samsung/android/ocr/stride/Stride;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/ocr/stride/Stride;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/ocr/stride/Stride;->stride:Lcom/samsung/android/ocr/stride/Stride;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/ocr/stride/Stride;

    invoke-direct {v1}, Lcom/samsung/android/ocr/stride/Stride;-><init>()V

    sput-object v1, Lcom/samsung/android/ocr/stride/Stride;->stride:Lcom/samsung/android/ocr/stride/Stride;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/ocr/stride/Stride;->stride:Lcom/samsung/android/ocr/stride/Stride;

    return-object v0
.end method


# virtual methods
.method public cvtToLang(I)I
    .locals 0

    return p1
.end method

.method public deinit()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/ocr/stride/Stride;->Close()V

    return-void
.end method

.method public detect([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 0

    invoke-virtual {p4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result p4

    invoke-static {p1, p3, p2, p4}, Lcom/samsung/android/ocr/MOCRImage;->fromByteArray([BIII)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p1

    invoke-static {p1, p5}, Lcom/samsung/android/ocr/stride/Stride;->Detect(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p1

    return p1
.end method

.method public detectBlock([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Landroid/graphics/Point;[Landroid/graphics/Point;)I
    .locals 0

    invoke-virtual {p4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result p4

    invoke-static {p1, p3, p2, p4}, Lcom/samsung/android/ocr/MOCRImage;->fromByteArray([BIII)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p1

    invoke-static {p1, p5, p6}, Lcom/samsung/android/ocr/stride/Stride;->DetectBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I

    move-result p1

    return p1
.end method

.method public detectBlock([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;[Landroid/graphics/Point;)I
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    div-int/lit8 v1, p2, 0x2

    div-int/lit8 v2, p3, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result p4

    invoke-static {p1, p3, p2, p4}, Lcom/samsung/android/ocr/MOCRImage;->fromByteArray([BIII)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p1

    invoke-static {p1, v0, p5}, Lcom/samsung/android/ocr/stride/Stride;->DetectBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I

    move-result p1

    return p1
.end method

.method public detectBlock_ARGB(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/ocr/stride/Stride;->DetectBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I

    move-result p1

    return p1
.end method

.method public detectBlock_ARGB(Lcom/samsung/android/ocr/MOCRImage;[Landroid/graphics/Point;)I
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRImage;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRImage;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p1, v0, p2}, Lcom/samsung/android/ocr/stride/Stride;->DetectBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I

    move-result p1

    return p1
.end method

.method public detectScript(Lcom/samsung/android/ocr/MOCRImage;)I
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/ocr/stride/Stride;->DetectScript(Lcom/samsung/android/ocr/MOCRImage;)I

    move-result p1

    return p1
.end method

.method public detectScriptAll(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/ocr/stride/Stride;->DetectScriptAll(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p1

    return p1
.end method

.method public detectText([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;)Z
    .locals 0

    invoke-virtual {p4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result p4

    invoke-static {p1, p3, p2, p4}, Lcom/samsung/android/ocr/MOCRImage;->fromByteArray([BIII)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/ocr/stride/Stride;->DetectText(Lcom/samsung/android/ocr/MOCRImage;)Z

    move-result p1

    return p1
.end method

.method public detectText_ARGB(Lcom/samsung/android/ocr/MOCRImage;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/ocr/stride/Stride;->DetectText(Lcom/samsung/android/ocr/MOCRImage;)Z

    move-result p1

    return p1
.end method

.method public detect_ARGB(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/ocr/stride/Stride;->Detect(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p1

    return p1
.end method

.method public freeDetectBlock()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/ocr/stride/Stride;->FreeDetectBlock()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/ocr/stride/Stride;->GetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()I
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/ocr/stride/Stride;->Init(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public init(I)I
    .locals 2

    iput p1, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/ocr/stride/Stride;->getDeviceLang()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    sget-object p1, Lcom/samsung/android/ocr/stride/Stride;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto Device Lang - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    iget v0, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    invoke-static {p1, v0}, Lcom/samsung/android/ocr/stride/Stride;->Init(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public init(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    invoke-static {p1}, Lcom/samsung/android/ocr/stride/Stride;->Init(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public init(Ljava/lang/String;I)I
    .locals 2

    iput p2, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/ocr/stride/Stride;->getDeviceLang()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    sget-object p2, Lcom/samsung/android/ocr/stride/Stride;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto Device Lang - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p2, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    invoke-static {p1, p2}, Lcom/samsung/android/ocr/stride/Stride;->Init(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public run([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 0

    invoke-virtual {p4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result p4

    invoke-static {p1, p3, p2, p4}, Lcom/samsung/android/ocr/MOCRImage;->fromByteArray([BIII)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/samsung/android/ocr/stride/Stride;->Recognize_Java(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p1

    return p1
.end method

.method public run_ARGB(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ocr/stride/Stride;->Recognize_Java(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p1

    return p1
.end method

.method public set_options(Lcom/samsung/android/ocr/MOCROptions;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/ocr/stride/Stride;->SetOptions(Lcom/samsung/android/ocr/MOCROptions;)V

    return-void
.end method
