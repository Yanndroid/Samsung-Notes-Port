.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;
    }
.end annotation


# static fields
.field private static final BOOKMARK_VOICE_KEY:Ljava/lang/String; = "NOTES_APP_BOOKMARK_VOICE_IDENTIFIER"

.field private static final DIRECT_VIEW_UNDERLINE_DP:I = 0x27

.field private static final TAG:Ljava/lang/String; = "SpdExtractor"

.field private static final USE_TEXT_RECOG:Z = false

.field private static final VOICE_MEMO_FILE_PREFIX:Ljava/lang/String; = "/"

.field private static final VOICE_MEMO_KEY:Ljava/lang/String; = "VoiceMemo"

.field private static final VOICE_MEMO_TYPE:I = 0x17


# instance fields
.field private DEFAULT_MARGIN:I

.field private mContext:Landroid/content/Context;

.field private mMaxPageCnt:I

.field private mProgressListener:Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;

.field private mTextRecognition:Lcom/samsung/android/support/senl/document/contract/DocumentTextRecognition;

.field private mVoiceMemoTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mVoiceMemoTable:Ljava/util/ArrayList;

    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mMaxPageCnt:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mTextRecognition:Lcom/samsung/android/support/senl/document/contract/DocumentTextRecognition;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mProgressListener:Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 p1, p1, 0xa0

    mul-int/lit8 p1, p1, 0x27

    iput p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->DEFAULT_MARGIN:I

    return-void
.end method

.method private CleanData(Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;)V
    .locals 4

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;->hwList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getAttachedFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;->hwList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;->voiceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->getAttachedFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_4
    iput-object v0, p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;->voiceList:Ljava/util/ArrayList;

    :cond_5
    return-void
.end method

.method private initVoiceMemo(Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;)Landroid/util/ArrayMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "VoiceMemo"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_4

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mVoiceMemoTable:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mVoiceMemoTable:Ljava/util/ArrayList;

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move v6, v2

    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_3

    aget-object v7, v1, v6

    invoke-virtual {p1, v7}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getAttachedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initVoicecopy file :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SpdExtractor"

    invoke-static {v11, v10}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v9, v10}, Lcom/samsung/android/support/senl/document/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v7, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mVoiceMemoTable:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v1, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v6

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v1, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] fileName = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v1, v6

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->fileUtils_logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception p1

    const-string v1, "initVoiceMemo fail copy voice file"

    invoke-static {v11, v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_3
    return-object v5

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getBgEffect(Landroid/content/Context;F)Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;->margin:F

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/document/R$color;->stroke_pagedoc_bg_effect_color:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, v0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;->color:I

    sget p2, Lcom/samsung/android/support/senl/document/R$dimen;->stroke_bg_effect_divider_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, v0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;->width:F

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    sget v1, Lcom/samsung/android/support/senl/document/R$dimen;->stroke_direct_view_zoom_ratio:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    sget v1, Lcom/samsung/android/support/senl/document/R$dimen;->stroke_thumbnail_default_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p1

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;->space:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, v0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;->color:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, v0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;->width:F

    const/high16 p1, 0x42400000    # 48.0f

    div-float/2addr p2, p1

    iput p2, v0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;->space:F

    :goto_0
    return-object v0
.end method

.method public requestExtract(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestExtract start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->fileUtils_logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpdExtractor"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v6, 0x0

    invoke-direct {v2, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "measurePageDoc screen rect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ".spd"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File path : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v5}, Lcom/samsung/android/support/senl/document/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    new-instance v15, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;

    iget-object v9, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mContext:Landroid/content/Context;

    invoke-direct {v15, v9}, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    goto :goto_1

    :cond_1
    new-instance v16, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    iget-object v10, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mContext:Landroid/content/Context;

    float-to-int v13, v4

    float-to-int v14, v2

    move-object/from16 v9, v16

    move-object/from16 v12, p2

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v9, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    iget-object v10, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mContext:Landroid/content/Context;

    float-to-int v12, v4

    float-to-int v13, v2

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    :goto_2
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getOrientation()I

    move-result v10

    invoke-direct {v0, v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->initVoiceMemo(Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPageCount()I

    move-result v12

    new-instance v13, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;

    invoke-direct {v13}, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;-><init>()V

    move v14, v6

    :goto_3
    const-string v6, " / "

    move-object/from16 v17, v5

    if-ge v14, v12, :cond_d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v18

    const/4 v5, 0x0

    if-eqz v18, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread Interrupted! : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->fileUtils_logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close(Z)V

    invoke-virtual {v15}, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->close()V

    invoke-direct {v0, v13}, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->CleanData(Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;)V

    return-object v5

    :cond_3
    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawText requestExtract : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    iget-object v5, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mContext:Landroid/content/Context;

    float-to-int v6, v4

    move/from16 v19, v4

    float-to-int v4, v2

    invoke-direct {v1, v5, v10, v6, v4}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;-><init>(Landroid/content/Context;III)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v1, v4}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->transferPage(Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;I)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v6

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObjectList()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v20, v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v21, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v9

    const-string v9, "objectCount:"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v9, -0x1000000

    if-nez v2, :cond_4

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getBackgroundImagePath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getBackgroundColor()I

    move-result v2

    and-int/2addr v2, v9

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, v17

    move/from16 v4, v19

    move/from16 v2, v20

    move/from16 v10, v21

    move-object/from16 v9, v22

    goto/16 :goto_3

    :cond_4
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result v9

    int-to-float v9, v9

    move/from16 v23, v12

    const/4 v12, 0x0

    invoke-direct {v2, v12, v12, v10, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Drawn Rect:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v10

    const/4 v12, 0x4

    if-ne v10, v12, :cond_5

    const-string v10, "Type"

    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result v10

    const/16 v12, 0x17

    if-ne v10, v12, :cond_5

    const-string v10, "filePath"

    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    const/16 v24, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v12, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mVoiceMemoTable:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->attachFile(Ljava/lang/String;)V

    const-string v12, "NOTES_APP_BOOKMARK_VOICE_IDENTIFIER"

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v4

    const-string v4, "attach voice file : "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v4

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getAttachedFile()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->fileUtils_logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / name : "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->fileUtils_logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    move-object/from16 v24, v4

    :goto_5
    move-object/from16 v4, v24

    goto :goto_4

    :cond_6
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    invoke-virtual {v15, v6}, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->setPageDoc(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getBackgroundImagePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getBackgroundColor()I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0, v4, v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->getBgEffect(Landroid/content/Context;F)Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->setBackgroundEffect(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;)Z

    :cond_7
    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getBackgroundColor()I

    move-result v4

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->setBackgroundColor(I)V

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getBackgroundImagePath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    const/4 v9, 0x1

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    :goto_6
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v15, v10}, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->capturePage(F)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v24

    iget-object v12, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mContext:Landroid/content/Context;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v31, v11

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v32, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v25, v12

    move-object/from16 v26, v10

    move/from16 v29, v11

    move/from16 v30, v5

    invoke-virtual/range {v24 .. v30}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->imageUtils_saveToCache(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->setPageDoc(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_7

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    const/4 v10, 0x0

    invoke-virtual {v1, v6, v10}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->save(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "thumbnailFile :"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->fileUtils_logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    new-instance v1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;

    invoke-direct {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setThumbnailPath(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->setObjectRect(Landroid/graphics/RectF;)V

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->attachFile(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->setThumbnailCount(I)V

    if-nez v9, :cond_a

    const/high16 v2, -0x1000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_a

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->setBackgroundColor(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set HWC BG color :"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v2, v13, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;->hwList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    iget-object v1, v13, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;->delFiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v13, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;->delFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v13, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;->pageIdList:Ljava/util/ArrayList;

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mProgressListener:Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;

    if-eqz v1, :cond_b

    add-int/lit8 v2, v14, 0x1

    move/from16 v4, v23

    const/4 v5, 0x0

    invoke-interface {v1, v2, v4, v5}, Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;->onProgress(IILjava/util/ArrayList;)V

    goto :goto_8

    :cond_b
    move/from16 v4, v23

    goto :goto_8

    :cond_c
    :goto_7
    move/from16 v4, v23

    const/4 v10, 0x0

    const-string v1, "thumbnailFile is null. skip."

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move v12, v4

    move-object/from16 v5, v17

    move/from16 v4, v19

    move/from16 v2, v20

    move/from16 v10, v21

    move-object/from16 v9, v22

    move-object/from16 v11, v31

    goto/16 :goto_3

    :cond_d
    move-object/from16 v22, v9

    move-object/from16 v31, v11

    const/4 v10, 0x0

    if-eqz v31, :cond_f

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_f

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v4, "MM/dd/yyyy H:m"

    invoke-direct {v1, v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_9
    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v10, v2, :cond_f

    move-object/from16 v2, v31

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;

    invoke-direct {v5}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;-><init>()V

    invoke-static {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    const-string v8, "SMemo"

    move-object/from16 v9, p1

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_e

    :try_start_0
    invoke-virtual {v5}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x2

    invoke-virtual {v5}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v11, v12}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "save voice file : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " / fail to parse title"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_a
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->attachFile(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "attach voice file to ContentVoice: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->getVoiceRuntime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->setPlayTime(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x1

    add-int/2addr v8, v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->setBookmarkID(Ljava/lang/String;)V

    iget-object v8, v13, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;->voiceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v13, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor$ResultInfo;->delFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v31, v2

    goto/16 :goto_9

    :cond_f
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-object/from16 v9, v22

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close(Z)V

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/support/senl/document/util/FileUtil;->deleteFile(Ljava/io/File;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    invoke-virtual {v15}, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->close()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    return-object v13
.end method

.method public setMaxPageCountForSdoc(I)Z
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mMaxPageCnt:I

    const/4 p1, 0x1

    return p1
.end method

.method public setProgressListener(Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SpdExtractor;->mProgressListener:Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;

    return-void
.end method
