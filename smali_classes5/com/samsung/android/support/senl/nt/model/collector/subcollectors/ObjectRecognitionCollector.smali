.class public Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;
.super Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ObjectRecognitionCollector"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V

    return-void
.end method

.method private getActionLinkDataInfo(Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;",
            "Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->getLinkInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setDocUuid(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->pageUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setPageUuid(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setType(I)V

    iget v3, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->pageWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setPageWidth(Ljava/lang/Integer;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setFilePath(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setHasVisualCue(Ljava/lang/Integer;)V

    new-instance v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;

    invoke-direct {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->linkStr:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->linkStr:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->repObjectUuid:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->repObjectUuid:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->handleList:Ljava/util/ArrayList;

    iput-object v4, v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->handleList:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->lastCharRect:Landroid/graphics/Rect;

    iput-object v4, v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->lastCharRect:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->leftCharRect:Landroid/graphics/Rect;

    iput-object v4, v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->firstCharRect:Landroid/graphics/Rect;

    iget v4, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->linkType:I

    iput v4, v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->linkType:I

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->strokeRect:Landroid/graphics/Rect;

    iput-object v4, v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->strokeRect:Landroid/graphics/Rect;

    iget v1, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->pageWidth:I

    iput v1, v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->pageWidth:I

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->getJsonStrFromActionLinkData(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setActionLinkData(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActionLinkDataInfo, result size: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTextInfo(Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;",
            "Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->getTextInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setDocUuid(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->pageUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setPageUuid(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setHasVisualCue(Ljava/lang/Integer;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getNotePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setFilePath(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setText(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setLeft(Ljava/lang/Integer;)V

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setTop(Ljava/lang/Integer;)V

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setBottom(Ljava/lang/Integer;)V

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setRight(Ljava/lang/Integer;)V

    iget v1, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->pageWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setPageWidth(Ljava/lang/Integer;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setType(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTextInfo, result size: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public collect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->isAvailable(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectCanceled(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->collectNext(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z

    move-result p1

    return p1

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;->TAG:Ljava/lang/String;

    const-string v1, "collect"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;->preCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectStarted(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)V

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;->createTextRecognitionExtractor(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector$1;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->setTextRecognitionPlugIn(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionPlugInContract;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector$2;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->requestExtract(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;)Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;->getTextInfo(Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->setObjectRecognitionSearchData(Ljava/util/List;)V

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;->getActionLinkDataInfo(Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->setObjectRecognitionActionLinkData(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collect, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;->postCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectFinished(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    goto :goto_0

    :cond_2
    :goto_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;->TAG:Ljava/lang/String;

    const-string v1, "collect not executed, not supported or not available"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectFailed(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    goto :goto_0
.end method

.method public createTextRecognitionExtractor(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)V

    return-object v0
.end method

.method public fail(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectFailed(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->failNext(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z

    move-result p1

    return p1
.end method

.method public postCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;->TAG:Ljava/lang/String;

    const-string v1, "postCollect"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getNoteType()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;->W_NOTE:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->getObjectRecognitionSearchData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->getSearchDataList(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->getObjectRecognitionActionLinkData()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->getActionLinkDataList(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->getOpenedDoc(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->createStrokeRecognitionData(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getChangedWPages()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->createStrokeRecognitionDataResetPageIds(Ljava/util/Set;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollectListenerManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->setStrokeRecognitionData(Ljava/util/Map;Ljava/util/List;Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getWNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getChangedPageIds()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getSourceType()I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->createPageSearchInfoEntitiesWithSearchModifiedAt(Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/Set;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->insertPageSearchInfoEntities(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getSDoc()Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getNotePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->getObjectRecognitionSearchData()Ljava/util/List;

    move-result-object v3

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->getObjectRecognitionActionLinkData()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->setSearchEntityToNoteDoc(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->getObjectRecognitionSearchData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->insertStrokeSearchEntities(Ljava/util/List;)V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->getObjectRecognitionActionLinkData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->insertStrokeSearchEntities(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x3

    aput v1, v0, v2

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->getRecognizeTextsWithExcludedTypes(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->setEntireObjectRecognitionData(Ljava/util/List;)V

    return-void
.end method

.method public preCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 4

    sget-object p2, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;->TAG:Ljava/lang/String;

    const-string v0, "preCollect"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->setPageInfo(I)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getNoteType()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;->W_NOTE:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getWNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getChangedPageIds()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getSourceType()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->createChangedPageSearchInfoEntitiesWithContentModifiedAt(Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/Set;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getRemovedPageIds()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->createRemovedPageSearchInfoEntitiesWithContentModifiedAt(Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->insertPageSearchInfoEntities(Ljava/util/List;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->removePageSearchInfoEntities(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getRemovedPageIds()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->removeStrokeSearchEntities(Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getChangedPageIds()Ljava/util/Set;

    move-result-object p1

    new-array v1, p2, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->removeStrokeSearchEntitiesWithType(Ljava/lang/String;Ljava/util/Set;[I)V

    return-void
.end method
