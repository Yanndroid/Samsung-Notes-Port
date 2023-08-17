.class public Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;
.super Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TextSearchCollector"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ICollectStateListener;)V

    return-void
.end method

.method private collectBodyTextData(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getNoteType()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;->S_DOC:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContent()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getWNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->setBodyTextData(Ljava/lang/String;)V

    return-void
.end method

.method private collectTextBoxData(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getChangedWPages()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_1

    :cond_2
    check-cast v5, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v6

    invoke-direct {p0, v5, v3, v6}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->convertFromObjectShape(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Ljava/lang/String;I)Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->getTextBoxInfo(Ljava/util/List;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->setTextBoxSearchData(Ljava/util/List;)V

    return-void
.end method

.method private collectTitleData(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getNoteType()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;->W_NOTE:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getWNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->setTitleData(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private convertFromObjectShape(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Ljava/lang/String;I)Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->str:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getDrawnRect()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput p1, v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->contentType:I

    iput-object p2, v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->pageUuid:Ljava/lang/String;

    iput p3, v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->pageWidth:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private createBodyTextSearchEntity(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;
    .locals 2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->getBodyTextData()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->trimMaxIndexContentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents;->makeStrippedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;->setDocUuid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getNotePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;->setStrippedContent(Ljava/lang/String;)V

    return-object v0
.end method

.method private getTextBoxInfo(Ljava/util/List;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setHasVisualCue(Ljava/lang/Integer;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getNotePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setFilePath(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->str:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setText(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setLeft(Ljava/lang/Integer;)V

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setTop(Ljava/lang/Integer;)V

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setBottom(Ljava/lang/Integer;)V

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setRight(Ljava/lang/Integer;)V

    iget v1, v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->pageWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setPageWidth(Ljava/lang/Integer;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setType(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTextBoxInfo, result size: "

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

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollectListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectCanceled(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->collectNext(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z

    move-result p1

    return p1

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->TAG:Ljava/lang/String;

    const-string v1, "collect"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->preCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollectListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectStarted(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->collectTextBoxData(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->collectTitleData(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->collectBodyTextData(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->TAG:Ljava/lang/String;

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
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->postCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollectListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectFinished(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    goto :goto_0

    :cond_2
    :goto_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->TAG:Ljava/lang/String;

    const-string v1, "collect not executed, not supported or not available"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollectListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectFailed(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    goto :goto_0
.end method

.method public fail(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollectListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectFailed(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->failNext(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z

    move-result p1

    return p1
.end method

.method public postCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->TAG:Ljava/lang/String;

    const-string v1, "postCollect"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->getTextBoxSearchData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->insertStrokeSearchEntities(Ljava/util/List;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->createBodyTextSearchEntity(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->insertContentTextData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;)V

    return-void
.end method

.method public preCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 2

    sget-object p2, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;->TAG:Ljava/lang/String;

    const-string v0, "preCollect"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->setPageInfo(I)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getRemovedPageIds()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->removeStrokeSearchEntities(Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getChangedPageIds()Ljava/util/Set;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p2, v1, p2

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->removeStrokeSearchEntitiesWithType(Ljava/lang/String;Ljava/util/Set;[I)V

    return-void
.end method
