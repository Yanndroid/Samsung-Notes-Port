.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CROP_EXTRA_DATA_KEY:Ljava/lang/String; = "SAMSUNGNOTES_SNB_CONVERTER_FG_IMAGE_CROP_DATA_"

.field private static final SDOC_FOR_CATEGORY:Ljava/lang/String; = "SDocData"

.field private static final SMEMO2_FOR_CATEGORY:Ljava/lang/String; = "SMemo2"

.field private static final SMEMO_FOR_CATEGORY:Ljava/lang/String; = "SMemo"

.field private static final SNOTE3_FOR_CATEGORY:Ljava/lang/String; = "SNote3"

.field private static final SNOTEPATH_FOR_CATEGORY:Ljava/lang/String; = "SnoteData"

.field private static final SNOTE_FOR_CATEGORY:Ljava/lang/String; = "SNote"

.field private static final TAG:Ljava/lang/String; = "SNoteConverter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

.field private mKmemoProgressListener:Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;

.field private mNoteHeight:I

.field private mNoteWidth:I

.field private mSnbConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

.field private mSpdExtractor:Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mSnbConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mSpdExtractor:Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mKmemoProgressListener:Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mNoteWidth:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mNoteHeight:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mSpdExtractor:Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;

    new-instance v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter$1;-><init>(Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->setProgressListener(Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;)V

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mSnbConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mNoteWidth:I

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mNoteHeight:I

    iget v2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mNoteWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41100000    # 9.0f

    div-float/2addr v2, v3

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    float-to-int v0, v2

    iput v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mNoteHeight:I

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->initSpenSdk(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mSnbConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/16 v3, 0xa

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;->initSdk(Ljava/lang/String;III)V

    const-string p1, "SNoteConverter"

    const-string v0, "SNoteConverter()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;)Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mKmemoProgressListener:Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;

    return-object p0
.end method

.method private createSdoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZZ)Ljava/util/ArrayList;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p3

    const-string v14, "convert"

    const-string v15, "SNoteConverter"

    iget-object v0, v12, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mSpdExtractor:Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->requestExtract(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v10, :cond_0

    return-object v11

    :cond_0
    iget-object v8, v10, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;->hwList:Ljava/util/ArrayList;

    iget-object v9, v10, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;->voiceList:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->isFavorite(Ljava/lang/String;)Z

    move-result v7

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p10, :cond_1

    move-object/from16 v6, p10

    goto :goto_0

    :cond_1
    move-object v6, v0

    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    div-int/lit8 v3, v1, 0x64

    move-object/from16 v16, v11

    move-object/from16 v17, v16

    const/4 v1, 0x0

    :goto_1
    if-gt v1, v3, :cond_b

    const-string v11, "]_"

    const-string v2, "["

    move/from16 p10, v3

    const-string v3, ".sdoc"

    move-object/from16 v18, v5

    if-lez v1, :cond_3

    const-string v5, "_"

    if-nez v13, :cond_2

    move-object/from16 v19, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v9

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v9

    move-object/from16 v21, v8

    iget-object v8, v12, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v10, v0

    move-object v11, v2

    goto/16 :goto_2

    :cond_2
    move-object/from16 v21, v8

    move-object/from16 v20, v9

    move-object/from16 v19, v10

    invoke-virtual {v13, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v13, v8, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v10, v0

    move-object v11, v2

    const/16 v17, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v21, v8

    move-object/from16 v20, v9

    move-object/from16 v19, v10

    if-nez v13, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v8

    iget-object v9, v12, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v11, v0

    move-object v10, v2

    goto :goto_2

    :cond_4
    move-object/from16 v17, p4

    move-object v11, v0

    move-object v10, v13

    :goto_2
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    iget-object v2, v12, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v8, 0x0

    :try_start_1
    invoke-direct {v0, v2, v10, v8, v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    :goto_3
    const/4 v8, 0x0

    :goto_4
    invoke-static {v15, v14, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v9, v16

    :goto_5
    invoke-virtual {v9}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getTitle()Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->setFavorite(Z)V

    const/4 v2, 0x1

    move/from16 v5, p13

    if-ne v5, v2, :cond_5

    invoke-virtual {v9, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->setDocumentType(I)V

    const/4 v3, 0x0

    goto :goto_6

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->setDocumentType(I)V

    :goto_6
    mul-int/lit8 v0, v1, 0x64

    move v3, v0

    :goto_7
    if-ge v3, v4, :cond_7

    move-object/from16 v8, v21

    :try_start_2
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->appendContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    :try_end_2
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedImageLimitException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedTextLimitException; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    :goto_8
    invoke-static {v15, v14, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v0, v3, 0x64

    if-nez v0, :cond_6

    goto :goto_a

    :cond_6
    move-object/from16 v21, v8

    const/4 v8, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v8, v21

    :goto_a
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;

    :try_start_3
    new-instance v2, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;

    invoke-direct {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;-><init>()V

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->copy(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V

    invoke-virtual {v9, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->appendContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    :try_end_3
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedImageLimitException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedTextLimitException; {:try_start_3 .. :try_end_3} :catch_a

    goto :goto_d

    :catch_a
    move-exception v0

    goto :goto_c

    :catch_b
    move-exception v0

    :goto_c
    invoke-static {v15, v14, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    const/4 v2, 0x1

    goto :goto_b

    :cond_8
    if-eqz p11, :cond_9

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->getCategoryByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v12, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    move/from16 v21, v1

    move-object/from16 v1, p0

    const/16 v29, 0x0

    move/from16 v13, p10

    move-object v3, v9

    move/from16 v30, v4

    move-object v4, v10

    move-object/from16 v35, v18

    move-object/from16 v18, v14

    move-object/from16 v14, v35

    move-object v5, v0

    move-object/from16 v31, v6

    move v6, v7

    move/from16 v32, v7

    move-object/from16 v7, v17

    move-object/from16 p1, v9

    move-object/from16 v33, v20

    const/16 v16, 0x0

    move-object/from16 v20, v8

    move-wide/from16 v8, p6

    move-object/from16 p5, v10

    move-object/from16 v34, v15

    move-object/from16 v15, v16

    move-object/from16 p10, v19

    move-object/from16 v19, v11

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->updateToDB(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JJ)Ljava/lang/String;

    move-object/from16 v1, p1

    goto :goto_e

    :cond_9
    move/from16 v13, p10

    move/from16 v21, v1

    move/from16 v30, v4

    move-object/from16 v31, v6

    move/from16 v32, v7

    move-object/from16 p1, v9

    move-object/from16 p5, v10

    move-object/from16 v34, v15

    move-object/from16 p10, v19

    move-object/from16 v33, v20

    const/4 v15, 0x0

    const/16 v29, 0x0

    move-object/from16 v20, v8

    move-object/from16 v19, v11

    move-object/from16 v35, v18

    move-object/from16 v18, v14

    move-object/from16 v14, v35

    const/16 v24, 0x0

    move-object/from16 v22, p1

    move-object/from16 v23, p5

    move-wide/from16 v25, p6

    move-wide/from16 v27, p8

    invoke-virtual/range {v22 .. v28}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->save(Ljava/lang/String;[Ljava/lang/String;JJ)V

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V

    :goto_e
    if-eqz p12, :cond_a

    iget-object v0, v12, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mKmemoProgressListener:Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;

    if-eqz v0, :cond_a

    int-to-double v2, v13

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v3, v21, 0x1

    int-to-double v6, v3

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    invoke-interface {v0, v2, v13, v15}, Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;->onProgress(IILjava/util/ArrayList;)V

    :cond_a
    move-object/from16 v2, p5

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v21, 0x1

    move-object/from16 v10, p10

    move-object/from16 v16, v1

    move v3, v13

    move-object v5, v14

    move-object v11, v15

    move-object/from16 v14, v18

    move-object/from16 v8, v20

    move/from16 v4, v30

    move-object/from16 v6, v31

    move/from16 v7, v32

    move-object/from16 v9, v33

    move-object/from16 v15, v34

    move-object/from16 v13, p3

    move v1, v0

    move-object/from16 v0, v19

    goto/16 :goto_1

    :cond_b
    move-object v14, v5

    move-object v1, v10

    iget-object v0, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;->delFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_f

    :cond_d
    return-object v14
.end method

.method private deleteMemo(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getNoteFilePathList(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v3, :cond_3

    if-ltz v4, :cond_3

    if-gt v4, v3, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    sub-int v5, v4, v3

    if-gtz v5, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getSDocUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->deleteSDoc(Landroid/content/Context;Ljava/lang/String;Z)V

    return v2

    :cond_8
    return v0
.end method

.method private static getCategoryByPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "SnoteData/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_0

    :cond_0
    const-string v1, "SMemo2/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v6

    goto :goto_0

    :cond_1
    const-string v1, "SMemo/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    const-string v1, "SNote3/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    const-string v1, "SNote/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    const-string v1, "SDocData/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_13

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCategoryByPath() : subCatPosStart["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "] subCatPosEnd["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "], folderName : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "SNoteConverter"

    invoke-static {v15, v12}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "SnoteData"

    if-ne v1, v7, :cond_6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    :cond_6
    const-string v7, "SMemo"

    if-ne v1, v5, :cond_7

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    :cond_7
    const-string v5, "SMemo2"

    if-ne v1, v6, :cond_8

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    :cond_8
    const-string v6, "SNote"

    if-ne v1, v3, :cond_9

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    :cond_9
    const-string v3, "SNote3"

    if-ne v1, v4, :cond_a

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    :cond_a
    const-string v4, "SDocData"

    if-ne v1, v2, :cond_b

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_c
    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_d
    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_e
    const/4 v2, 0x4

    if-ne v1, v2, :cond_f

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_f
    const/4 v2, 0x5

    if-ne v1, v2, :cond_10

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    const/4 v2, 0x6

    if-ne v1, v2, :cond_13

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_11
    if-lez v10, :cond_13

    if-lez v9, :cond_13

    add-int/lit8 v9, v10, -0x1

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v10, v1, 0x1

    if-ltz v10, :cond_12

    if-le v9, v10, :cond_12

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_12
    const-string v1, ""

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], parentFolder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2

    :cond_13
    const/4 v11, 0x0

    :cond_14
    :goto_2
    return-object v11
.end method

.method private static getCategoryUuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getCategoryUUID(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->addCategory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getCreatedTime(Ljava/lang/String;)J
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->getCreatedTime(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->getLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private static initSpenSdk(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SNoteConverter"

    new-instance v1, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    :try_start_0
    const-string v2, "initSpenSdk() start"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->initialize(Landroid/content/Context;I)V

    const-string p0, "initSpenSdk() end"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getType()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vendor is not SAMSUNG"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device is not supported"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private makeEmptySodc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".sdoc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3, v0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getTitle()Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    invoke-direct {p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;-><init>()V

    const-string v5, ""

    invoke-virtual {p2, v5}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->appendContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object p2

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/DocumentSaveSDoc;->createBuilderInstance()Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setSPenSDoc(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setNew(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setDocFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setLastModifiedAtTime(Ljava/lang/Long;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setCreatedAtTime(Ljava/lang/Long;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentSaveSDoc;->saveSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to make empty sdoc "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SNoteConverter"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static saveLockFile(Landroid/content/Context;Ljava/lang/String;JJZILjava/lang/String;)Ljava/lang/String;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p7

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveLockFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SNoteConverter"

    invoke-static {v6, v5}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->getCategoryByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-nez p8, :cond_1

    move-object v9, v7

    goto :goto_0

    :cond_1
    move-object/from16 v9, p8

    :goto_0
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v11

    invoke-virtual {v11, p0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]_"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ".sdoc"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-direct {v10, p0, v9, v3, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getLockTypeSPD()I

    move-result v11

    if-ne v2, v11, :cond_2

    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->setDocumentType(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getLockTypeSNB()I

    move-result v11

    if-ne v2, v11, :cond_3

    const/4 v4, 0x3

    invoke-virtual {v10, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->setDocumentType(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getLockTypeTMEMO()I

    move-result v4

    if-ne v2, v4, :cond_4

    const-string v7, ""

    const/4 v4, 0x4

    invoke-virtual {v10, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->setDocumentType(I)V

    :cond_4
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveLockMemo - lockType :  "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " / title : "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getTitle()Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->bindFile(Ljava/lang/String;)I

    invoke-static {p0, v5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->getCategoryUuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/DocumentSaveSDoc;->createBuilderInstance()Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v4

    invoke-interface {v4, v10}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setSPenSDoc(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v4

    invoke-interface {v4, v9}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setDocFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v4

    invoke-interface {v4, v8}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setNew(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setCloseDocAfterSave(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setFavorite(Ljava/lang/Boolean;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v4

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setLockType(Ljava/lang/Integer;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setCategoryUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setCreatedAtTime(Ljava/lang/Long;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setLastModifiedAtTime(Ljava/lang/Long;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentSaveSDoc;->saveSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to make new SDOC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private setRemainderData(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p2, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;->pageIdList:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;

    invoke-direct {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;-><init>()V

    iput-wide p2, v1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;->time:J

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;->reminderUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->setReminderData(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateToDB(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JJ)Ljava/lang/String;
    .locals 3

    if-nez p6, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object p6

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {p6, v0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p6

    :cond_0
    invoke-static {p1, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->getCategoryUuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p6}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->isExistingNote(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/DocumentSaveSDoc;->createBuilderInstance()Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v2

    invoke-interface {v2, p6}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setSPenSDoc(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setCloseDocAfterSave(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setDocFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p2

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    invoke-interface {p2, p7}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setCreatedAtTime(Ljava/lang/Long;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p2

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    invoke-interface {p2, p7}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setLastModifiedAtTime(Ljava/lang/Long;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-interface {p2, p5}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setFavorite(Ljava/lang/Boolean;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setUpdateStrokeInWorkerThread(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p2

    invoke-interface {p2, p4}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setCategoryUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setNew(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/document/delegator/DocumentSaveSDoc;->saveSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateToDB() - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is saved"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SNoteConverter"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p6
.end method


# virtual methods
.method public convertSNBToSDoc(Ljava/lang/String;I)Z
    .locals 20

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v0, p2

    const-string v1, "SNoteConverter"

    const/4 v13, 0x0

    if-nez v15, :cond_0

    const-string v0, "converterToSDoc - snb path is null"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_0
    const/4 v12, 0x0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->deleteMemo(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->isAlreadyConverted(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v11, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v10, v12

    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->isSNBLocked(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v11, :cond_4

    iget-object v0, v14, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getLockTypeSNB()I

    move-result v7

    move-object/from16 v1, p1

    move-wide v2, v8

    move-wide v4, v8

    move-object v8, v10

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->saveLockFile(Landroid/content/Context;Ljava/lang/String;JJZILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return v11

    :cond_3
    return v13

    :cond_4
    invoke-virtual {v14, v15, v12}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->snbTospd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail SNB To SPD : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v14, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-direct {v14, v0, v15}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->makeEmptySodc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v14, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v1, :cond_5

    invoke-interface {v1, v15, v0, v11}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    return v11

    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v6}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v19, v6

    move-wide v6, v8

    move/from16 v11, v16

    move-object/from16 v16, v12

    move/from16 v12, v17

    move v15, v13

    move/from16 v13, v18

    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->createSdoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v1

    iget-object v2, v14, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getSDocUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_8
    move-object/from16 v12, v16

    :goto_2
    new-instance v0, Ljava/io/File;

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/util/FileUtil;->deleteFile(Ljava/io/File;)V

    iget-object v0, v14, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v0, :cond_9

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v12, v2}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_9
    const/4 v2, 0x1

    :goto_3
    return v2

    :cond_a
    :goto_4
    move v0, v13

    const-string v2, "No SPD file"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public convertSNBToSDocFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "convertToSDocFile"

    const/4 v1, 0x0

    const-string v2, "SNoteConverter"

    if-nez p1, :cond_0

    const-string p1, "converterToSDoc - snb path is null"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v3, "snbTospd start"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->snbTospd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "snbTospd done"

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]_"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".sdoc"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v3, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    iget-object v4, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2, v1, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    :goto_0
    invoke-static {v2, v0, v3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    new-instance v3, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    invoke-direct {v3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getTitle()Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->appendContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedImageLimitException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedTextLimitException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    :goto_2
    invoke-static {v2, v0, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const/4 v5, 0x0

    move-object v3, v1

    move-object v4, p2

    move-wide v6, v8

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->save(Ljava/lang/String;[Ljava/lang/String;JJ)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    invoke-virtual {p0, v3, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->convertSPDToSDocFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/util/FileUtil;->deleteFile(Ljava/io/File;)V

    return-object p1
.end method

.method public convertSPDToSDoc(Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v0, p2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertSPDToSDoc - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v13, "SNoteConverter"

    invoke-static {v13, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    if-eqz v15, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v12, 0x1

    if-ne v0, v12, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->deleteMemo(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->isAlreadyConverted(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v12, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v10, v18

    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->getCreatedTime(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->getLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->isLocked(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v12, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->isFavorite(Ljava/lang/String;)Z

    move-result v11

    iget-object v0, v14, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getLockTypeSPD()I

    move-result v12

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide v4, v8

    move v6, v11

    move v7, v12

    move-object v8, v10

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->saveLockFile(Landroid/content/Context;Ljava/lang/String;JJZILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move/from16 v12, v19

    move-object/from16 v21, v13

    move/from16 v13, v20

    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->createSdoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v1

    iget-object v2, v14, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getSDocUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    :cond_4
    move-object/from16 v0, v18

    iget-object v1, v14, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    invoke-interface {v1, v15, v0, v2}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_convertTOSDoc - end : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v2, v16

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    :goto_2
    move-object v2, v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a spd file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v18
.end method

.method public convertSPDToSDocFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SNoteConverter"

    const-string v1, "convertToSDocFile - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a spd file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->getCreatedTime(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->getLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v14}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->createSdoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZZ)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "convertToSDocFile - end"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getLastModifiedTime(Ljava/lang/String;)J
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->getLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public isAlreadyConverted(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getNoteFilePathList(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v4, :cond_7

    if-ltz v5, :cond_7

    if-gt v5, v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    sub-int v6, v5, v4

    if-gtz v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    return v0
.end method

.method public isRightSPDPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRightPassword() : spd path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SNoteConverter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "isRightPassword() : spd path is null "

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "isRightPassword() : spd is not existed "

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->isrightPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    :goto_1
    const-string p1, "isRightPassword() : spd password is null or empty"

    goto :goto_0
.end method

.method public isRightSnbPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    const-string v4, "SNoteConverter"

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isRightSnbPassword() : Can\'t make directory( "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " )"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mSnbConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;->isRightSnbPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/support/senl/document/util/FileUtil;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p2, "Fail To Delete Cache File"

    invoke-static {v4, p2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return p1

    :cond_3
    :goto_2
    return v0
.end method

.method public isSNBLocked(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mSnbConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;->isLockedSnbFile(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSPDLocked(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->isLocked(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setFinishListener(Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    return-void
.end method

.method public setKMemoProgressListener(Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mKmemoProgressListener:Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;

    return-void
.end method

.method public setMaxPageCountForSDoc(I)Z
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mSpdExtractor:Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->setMaxPageCountForSdoc(I)Z

    move-result p1

    return p1
.end method

.method public snbTospd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v10, "SAMSUNGNOTES_SNB_CONVERTER_FG_IMAGE_CROP_DATA_B"

    const-string v11, "SAMSUNGNOTES_SNB_CONVERTER_FG_IMAGE_CROP_DATA_T"

    const-string v12, "SAMSUNGNOTES_SNB_CONVERTER_FG_IMAGE_CROP_DATA_L"

    const-string v13, "SAMSUNGNOTES_SNB_CONVERTER_FG_IMAGE_CROP_DATA_R"

    const/4 v14, 0x0

    const-string v15, "SNoteConverter"

    if-nez v0, :cond_0

    const-string v0, "path is invalid"

    :goto_0
    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v14

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "file is invalid"

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_c

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".spd"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "convert snb start"

    invoke-static {v15, v2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mSnbConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

    iget-object v3, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    iget v8, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mNoteWidth:I

    iget v9, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mNoteHeight:I

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;->getNoteDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    const-string v0, "convert snb done"

    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_3

    const-string v0, "fail to convert snb. make a empty spd"

    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    const-string v0, "new SpenNoteDoc"

    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    iget-object v0, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v21, 0x1

    move-object/from16 v16, v3

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, p2

    move/from16 v20, v4

    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x0

    move v5, v0

    move-object v4, v14

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPageCount()I

    move-result v6

    if-ge v5, v6, :cond_b

    invoke-virtual {v3, v5}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v6

    if-eqz v6, :cond_a

    move v8, v0

    :goto_2
    invoke-virtual {v6, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObjectCount(Z)I

    move-result v9

    if-ge v8, v9, :cond_a

    invoke-virtual {v6, v8}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_8

    invoke-virtual {v9, v13}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->hasExtraDataInt(Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_8

    move-object v0, v9

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v14

    if-nez v14, :cond_4

    move-object/from16 v16, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v8

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v16, v4

    :try_start_2
    invoke-virtual {v9, v13}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v11}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->removeExtraDataInt(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->removeExtraDataInt(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->removeExtraDataInt(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->removeExtraDataInt(Ljava/lang/String;)V

    iget v4, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v17, v10

    iget v10, v1, Landroid/graphics/Rect;->right:I

    if-ge v4, v10, :cond_7

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v10, :cond_5

    goto/16 :goto_4

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start Corp Foreground Bitmap "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    move-object/from16 v18, v11

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v14, v4, v6, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createBitmap "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_6

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v10

    int-to-float v0, v0

    div-float/2addr v10, v0

    iget v11, v1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v11

    iput v10, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float/2addr v10, v0

    iget v0, v1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v10, v0

    iget v0, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v0

    iput v10, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v7, v7

    div-float/2addr v0, v7

    iget v10, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    mul-float/2addr v0, v10

    iget v10, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v10

    iput v0, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v7

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v0, v7

    iget v7, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v7

    iput v0, v6, Landroid/graphics/RectF;->bottom:F

    move-object v0, v9

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->setImage(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v6, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End Corp Foreground Bitmap "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v4

    goto :goto_9

    :cond_7
    :goto_4
    move-object/from16 v18, v11

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v6, v9}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    goto :goto_6

    :cond_8
    move-object/from16 v16, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    move-object/from16 v16, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    goto/16 :goto_2

    :cond_a
    move-object/from16 v16, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    :goto_6
    move-object/from16 v4, v16

    :goto_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    goto/16 :goto_1

    :cond_b
    move-object/from16 v16, v4

    const/4 v0, 0x1

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->save(Ljava/lang/String;Z)V

    const-string v0, "new note save"

    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v16, v4

    :goto_8
    move-object v1, v0

    :goto_9
    move-object v0, v14

    move-object v14, v3

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v14

    move-object/from16 v16, v0

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to resize stroke image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_c

    :try_start_5
    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_b

    :catch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_b
    return-object v2

    :cond_f
    :goto_c
    const-string v0, "Can\'t Write To Cache folder"

    goto/16 :goto_0
.end method

.method public unlockSNB(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 21

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    const-string v14, "SNoteConverter"

    const/4 v13, 0x0

    const/4 v12, 0x0

    if-nez v0, :cond_1

    const-string v0, "unlockSNB : doc is null"

    invoke-static {v14, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, v12, v12, v13}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    iget-object v2, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v12, v12}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getTitle()Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getTitle()Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_0

    :cond_2
    move-object v11, v12

    :goto_0
    invoke-virtual {v1, v13}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getBoundFilePath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getModifiedTime()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getCreatedTime()J

    move-result-wide v7

    invoke-virtual {v1, v13}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V

    if-nez v3, :cond_4

    const-string v0, "unlockSNB : snbPath is null"

    invoke-static {v14, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, v12, v12, v13}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mSnbConverter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBToSPDConverter;->isLockedSnbFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "unlockSNB : spdPath is unlocked"

    invoke-static {v14, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v0, :cond_5

    invoke-interface {v0, v12, v12, v13}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v1

    iget-object v2, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getSDocUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v5, p2

    invoke-virtual {v15, v3, v5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->snbTospd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v18, v4

    move-object/from16 v4, p1

    move-object v5, v6

    move-object/from16 v19, v6

    move-object/from16 v6, p2

    move/from16 v12, v16

    move/from16 v13, v17

    move-object/from16 v20, v14

    move/from16 v14, p3

    :try_start_1
    invoke-direct/range {v1 .. v14}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->createSdoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZZ)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v13, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    move v1, v13

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    iget-object v2, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v2, :cond_8

    move-object/from16 v4, v18

    move-object/from16 v3, v19

    invoke-interface {v2, v4, v3, v1}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_8
    if-ne v1, v13, :cond_9

    new-instance v8, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    iget-object v1, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v8, v1, v0, v2, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->releaseFile(I)V

    const/4 v3, 0x0

    invoke-virtual {v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getCreatedTime()J

    move-result-wide v4

    invoke-virtual {v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getModifiedTime()J

    move-result-wide v6

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->save(Ljava/lang/String;[Ljava/lang/String;JJ)V

    invoke-virtual {v8, v13}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v20, v14

    :goto_2
    instance-of v1, v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockSNB fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void

    :cond_a
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v1, "invalid password"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unlockSPD(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 26

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockSPD start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v14, "SNoteConverter"

    invoke-static {v14, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v12, 0x0

    if-nez v0, :cond_1

    const-string v0, "unlockSPD : docUuid is null"

    invoke-static {v14, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, v12, v12, v13}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    iget-object v2, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v12, v12}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getDocumentType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v11, 0x1

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlockSPD - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not lock file"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V

    iget-object v0, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, v12, v12, v13}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getTitle()Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getTitle()Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_0

    :cond_4
    move-object/from16 v16, v12

    :goto_0
    invoke-virtual {v1, v13}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getBoundFilePath(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v13}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V

    if-nez v9, :cond_6

    const-string v0, "unlockSPD : spdPath is null"

    invoke-static {v14, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v0, :cond_5

    invoke-interface {v0, v9, v12, v13}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    return-void

    :cond_6
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->isLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v0, "unlockSPD : spdPath is unlocked"

    invoke-static {v14, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, v9, v12, v13}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    return-void

    :cond_8
    invoke-direct {v15, v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->getCreatedTime(Ljava/lang/String;)J

    move-result-wide v17

    invoke-virtual {v15, v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->getLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v19

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v1

    iget-object v2, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getSDocUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v9

    move-object/from16 v4, p1

    move-object v5, v10

    move-object/from16 v6, p2

    move-wide/from16 v7, v17

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-wide/from16 v9, v19

    move-object/from16 v11, v16

    move/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v25, v14

    move/from16 v14, p3

    :try_start_1
    invoke-direct/range {v1 .. v14}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->createSdoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v13, 0x1

    goto :goto_1

    :cond_9
    const/4 v13, 0x0

    :goto_1
    iget-object v1, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v1, :cond_a

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-interface {v1, v2, v3, v13}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_a
    const/4 v8, 0x1

    if-ne v13, v8, :cond_b

    new-instance v9, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    iget-object v1, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v0, v2, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->releaseFile(I)V

    const/4 v3, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->save(Ljava/lang/String;[Ljava/lang/String;JJ)V

    invoke-virtual {v9, v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v25, v14

    :goto_2
    instance-of v1, v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockSPD fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void

    :cond_c
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v1, "invalid password"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
