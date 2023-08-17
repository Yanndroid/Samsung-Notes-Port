.class public Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAGIC_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MagicPen"

.field private static final OBJECT_KEY_ACTION_LINK:Ljava/lang/String; = "action_link"

.field private static final OBJECT_VALUE_SHAPE:Ljava/lang/String; = "shape"

.field private static final TAG:Ljava/lang/String;

.field private static final sModeInteger:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

.field private final mContext:Landroid/content/Context;

.field private mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

.field private mStrokeIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;"
        }
    .end annotation
.end field

.field private mTextRecognitionManager:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "TextRecognitionExtractor"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->sModeInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeIndex:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    const-string v1, "created"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mTextRecognitionManager:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->isPossible()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->close()V

    :cond_0
    return-void
.end method

.method private extractStrokeFromObjectList(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    const-string v1, "extractStrokeFromObjectList"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeIndex:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    move-object v5, v4

    check-cast v5, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPenName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    const-string v7, "action_link"

    invoke-virtual {v4, v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "shape"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    move-object v1, v5

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getTimeStamps()[I

    move-result-object v1

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getTimeStamps()[I

    move-result-object v4

    if-eqz v4, :cond_5

    array-length v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_5

    if-eqz v1, :cond_5

    array-length v7, v1

    if-lt v7, v8, :cond_5

    aget v4, v4, v2

    array-length v7, v1

    sub-int/2addr v7, v6

    aget v1, v1, v7

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v4, 0xa

    if-ge v1, v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeIndex:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object v1, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method private requestExtractForSDoc(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_0

    move v0, v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getSDoc()Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getContentList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    const-string p2, "requestExtractForSDoc : null content list"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    check-cast v2, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getAttachedFile()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v3, v2, v0, v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeSpenNoteDoc(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestExtractForSDoc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObjectList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    new-instance v7, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mTextRecognitionManager:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->extractStrokeFromObjectList(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getPriority()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->getRecognizeSleepTime(Landroid/content/Context;I)I

    move-result v9

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mTextRecognitionManager:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeIndex:Ljava/util/ArrayList;

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getNotePath()Ljava/lang/String;

    move-result-object v10

    move-object v11, p1

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->requestRecognition(Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;)Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result v2

    invoke-virtual {p2, v3, v4, v2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->convertFromResultSpenRecognizer(Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;Ljava/lang/String;I)V

    :cond_4
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    sget-object v4, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestExtractForSDoc, exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    throw p1

    :cond_5
    return-void
.end method

.method private requestExtractForWDoc(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getChangedWPages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    new-instance v7, Landroid/util/Pair;

    add-int/lit8 v8, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v7, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v8

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mTextRecognitionManager:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;

    if-eqz v5, :cond_0

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->extractStrokeFromObjectList(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getPriority()I

    move-result v5

    invoke-static {v3, v5}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->getRecognizeSleepTime(Landroid/content/Context;I)I

    move-result v10

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mTextRecognitionManager:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeIndex:Ljava/util/ArrayList;

    const/4 v9, 0x1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getNotePath()Ljava/lang/String;

    move-result-object v11

    move-object v12, p1

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->requestRecognition(Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;)Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v2

    invoke-virtual {p2, v3, v4, v2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->convertFromResultSpenRecognizer(Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestExtractForWDoc, page/textInfo/linkInfo size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getChangedPageIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->getTextInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->getLinkInfoList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestRecognizeByObjectList(Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mTextRecognitionManager:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recognition object count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->extractStrokeFromObjectList(Ljava/util/ArrayList;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "cancellationSignal.isCanceled() true"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p2, "cancellationSignal.isCanceled() false"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mTextRecognitionManager:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeIndex:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v6, "ExtractStrokeFromObjectList"

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->requestRecognition(Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;)Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p4, p2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultString:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;-><init>()V

    iget-object v2, p2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultString:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->str:Ljava/lang/String;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultRectF:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x1

    iput v2, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->contentType:I

    iget-object v2, p2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultStringColor:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->strokeColor:I

    iput-object p3, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->pageUuid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->getTextInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mTextRecognitionManager:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mTextRecognitionManager:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeList:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeIndex:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mStrokeIndex:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close, fail to close doc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public declared-synchronized requestExtract(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;)Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestExtract, start - notePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getNotePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mCollectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getNoteType()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;->S_DOC:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->requestExtractForSDoc(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->requestExtractForWDoc(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;)V

    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->getTextInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->getTextInfoList()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor$1;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestExtract, end - size : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->getTextInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestExtract, exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->close()V

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    const-string v0, "requestExtract, end"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestRecognize(Ljava/lang/String;Landroid/os/CancellationSignal;)Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;
    .locals 15

    move-object v1, p0

    const-string v2, "fail to close, e : "

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestRecognize, start notePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    sget-object v6, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->sModeInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v7, 0xb54

    const/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v12

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestRecognize, mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v14

    iget-object v9, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/support/senl/nt/model/utils/SpenDocumentDisplayUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v11

    const/4 v13, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v9 .. v14}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeSpenWNote(Landroid/content/Context;Ljava/lang/String;IIZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    new-instance v12, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object/from16 v8, p2

    invoke-direct {p0, v3, v10, v9, v8}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->requestRecognizeByObjectList(Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->getTextInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    const-string v6, "requestRecognize, end success"

    invoke-static {v0, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v4, v0

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object v3

    :cond_3
    :try_start_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    const-string v6, "requestRecognize, no result"

    invoke-static {v0, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_3
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v0

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_4
    sget-object v6, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestRecognize, exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_5
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v4, v0

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-object v3

    :goto_5
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_6
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v4, v0

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_6
    throw v3
.end method

.method public setTextRecognitionPlugIn(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionPlugInContract;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->mTextRecognitionManager:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->setTextRecognitionPlugIn(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionPlugInContract;)V

    :cond_0
    return-void
.end method
