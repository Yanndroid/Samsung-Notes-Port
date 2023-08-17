.class public Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CollectResolver"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToEntity(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;-><init>()V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->hasVisualCue:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setHasVisualCue(Ljava/lang/Integer;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setFilePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setLeft(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setTop(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setBottom(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setRight(Ljava/lang/Integer;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setDocUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setPageUuid(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->pageWidth:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setPageWidth(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static createChangedPageSearchInfoEntitiesWithContentModifiedAt(Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/Set;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    const-string v1, "createChangedPageSearchInfoEntitiesWithContentModifiedAt"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->getPageSearchInfoMapFromDB(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageIndexById(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-static {v2, p0, v3, p3}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->createPageSearchInfoEntityWithContentModifiedAt(Ljava/util/Map;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createPageSearchInfoEntitiesWithSearchModifiedAt(Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/Set;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    const-string v1, "createPageSearchInfoEntitiesWithSearchModifiedAt"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->getPageSearchInfoMapFromDB(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageIndexById(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-static {p0, v2, p3}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->createPageSearchInfoEntityWithSearchModifiedAt(Ljava/util/Map;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static createPageSearchInfoEntityWithContentModifiedAt(Ljava/util/Map;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "I)",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;

    if-nez p0, :cond_0

    new-instance p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->setDocumentUuid(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->setPageUuid(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getModifiedTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->convertSdkTimeToAppTime(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->setLastContentModifiedAt(J)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->setContentSource(I)V

    return-object p0
.end method

.method private static createPageSearchInfoEntityWithSearchModifiedAt(Ljava/util/Map;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;",
            ">;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "I)",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    const-string p1, "createPageSearchInfoEntitiesWithSearchModifiedAt, content is not set!!!"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getModifiedTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->convertSdkTimeToAppTime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->setLastSearchModifiedAt(J)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->setSearchSource(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->setIsDirty(I)V

    return-object p0
.end method

.method public static createRemovedPageSearchInfoEntitiesWithContentModifiedAt(Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    const-string v1, "createRemovedPageSearchInfoEntitiesWithContentModifiedAt"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->getPageSearchInfoMapFromDB(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static createRetryEntity(Ljava/lang/String;JI)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->setDocUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->setState(I)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->setLastModifiedAt(J)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->setVersion(I)V

    return-object v0
.end method

.method public static createStrokeRecognitionData(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->mergeSearchActionLinkData(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createStrokeRecognitionData, exception  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :catch_2
    move-exception v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createStrokeRecognitionDataResetPageIds(Ljava/util/Set;Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getStrokeRecognitionData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static deleteReadyState(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteReadyState, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentRetryRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;->deleteByUuid(Ljava/lang/String;)V

    return-void
.end method

.method public static getActionLinkDataList(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getActionLinkData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->getActionLinkDataFromJsonStr(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getPageUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getPageUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getActionLinkDataListFromDB(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentStrokeRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->getEntities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->getActionLinkDataList(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getPageSearchInfoMapFromDB(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createPageSearchInfoRepository()Lcom/samsung/android/support/senl/nt/data/repository/search/NotesPageSearchInfoRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesPageSearchInfoRepository;->getEntities(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->getPageUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static varargs getRecognizeTextsWithExcludedTypes(Ljava/lang/String;[I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentStrokeRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->getEntityListWithExcludedTypes(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getActionLinkData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->getActionLinkDataFromJsonStr(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->linkStr:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getText()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getSDocSearchDataFromEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getHasVisualCue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->hasVisualCue:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->filePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->text:Ljava/lang/String;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getLeft()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getTop()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getBottom()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getRight()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getPageWidth()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;->pageWidth:I

    return-object v0
.end method

.method public static getSearchDataList(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    new-instance v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getType()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;->type:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getLeft()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getTop()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getRight()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getBottom()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;->text:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getPageWidth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;->pageWidth:I

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getPageUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getPageUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getSearchDataListFromDB(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentStrokeRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->getEntities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->getSearchDataList(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static insertContentTextData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertContentTextData, len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;->getStrippedContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentContentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;->getDocUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;->getStrippedContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;->updateStrippedContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;->getDocUuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->encryptTextSearchData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static insertPageSearchInfoEntities(Ljava/util/List;)V
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertPageSearchInfoEntities#, count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createPageSearchInfoRepository()Lcom/samsung/android/support/senl/nt/data/repository/search/NotesPageSearchInfoRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesPageSearchInfoRepository;->insert(Ljava/util/Collection;)V

    return-void
.end method

.method public static insertSDocSearchEntities(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    const-string v1, "insertSDocSearchEntities"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->convertToEntity(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentStrokeRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->setDocUuid(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;)V

    return-void
.end method

.method public static insertStrokeSearchEntities(Ljava/util/List;)V
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertStrokeSearchEntities#, count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentStrokeRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->insert(Ljava/util/Collection;)V

    return-void
.end method

.method public static insertTagEntities(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesAutoTagEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    const-string v1, "insertTagEntities#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentAutoTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesAutoTagRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesAutoTagRepository;->insert(Ljava/util/Collection;)V

    return-void
.end method

.method private static mergeSearchActionLinkData(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;

    new-instance v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;-><init>()V

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;->text:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;->rect:Landroid/graphics/Rect;

    iput-object v3, v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;->rect:Landroid/graphics/Rect;

    iget v3, p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;->pageWidth:I

    iput v3, v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;->pageWidth:I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;

    iget-object v5, p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;->text:Ljava/lang/String;

    iget-object v6, v4, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->linkStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$SearchData;->rect:Landroid/graphics/Rect;

    iget-object v6, v4, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->strokeRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;

    invoke-direct {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;-><init>()V

    iput-object v5, v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;->actionLinkData:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;->indexList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;->actionLinkData:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;

    iget v6, v4, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->linkType:I

    iput v6, v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;->type:I

    iget-object v6, v4, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->firstCharRect:Landroid/graphics/Rect;

    iput-object v6, v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;->firstCharRect:Landroid/graphics/Rect;

    iget-object v6, v4, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->lastCharRect:Landroid/graphics/Rect;

    iput-object v6, v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;->lastCharRect:Landroid/graphics/Rect;

    iget-object v5, v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;->indexList:Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->handleList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;->actionLinkData:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;

    iget-object v6, v4, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->repObjectUuid:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;->repObjectUuid:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static removePageSearchInfoEntities(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePageSearchInfoEntities#, count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createPageSearchInfoRepository()Lcom/samsung/android/support/senl/nt/data/repository/search/NotesPageSearchInfoRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesPageSearchInfoRepository;->delete(Ljava/util/Collection;)V

    return-void
.end method

.method public static removeStrokeSearchEntities(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStrokeSearchEntities#, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentStrokeRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->deleteByUuidAndPageIds(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static varargs removeStrokeSearchEntities(Ljava/lang/String;Ljava/util/Set;[I)V
    .locals 4
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStrokeSearchEntities#, uuid/page count/excludeTypes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentStrokeRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p0, v1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->deleteByUuidAndPageIdsWithExcludedTypes(Ljava/lang/String;Ljava/util/List;[I)V

    return-void
.end method

.method public static varargs removeStrokeSearchEntitiesWithType(Ljava/lang/String;Ljava/util/Set;[I)V
    .locals 4
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStrokeSearchEntitiesWithType#, uuid/page count/includeTypes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentStrokeRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p0, v1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->deleteByUuidAndPageIds(Ljava/lang/String;Ljava/util/List;[I)V

    return-void
.end method

.method public static varargs removeStrokeSearchEntitiesWithTypes(Ljava/lang/String;[I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStrokeSearchEntitiesWithTypes#, uuid/types : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentStrokeRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->deleteByUuidWithTypes(Ljava/lang/String;[I)V

    return-void
.end method

.method public static removeTagEntities(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    const-string v1, "removeTagEntities#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentAutoTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesAutoTagRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesAutoTagRepository;->deleteByUuid(Ljava/lang/String;)V

    return-void
.end method

.method private static setActionLinkData(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActionLinkData, doc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getContentCount()I

    move-result v2

    const/4 v3, 0x3

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getContent(I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v4

    if-ne v4, v3, :cond_2

    check-cast v2, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getAttachedFile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    array-length v3, v2

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getContent(I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v1

    if-ne v1, v3, :cond_4

    check-cast v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getActionLinkData()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getActionLinkData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getPageWidth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->getActionLinkDataFromJsonStr(Ljava/lang/String;I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->setActionLinkData(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_7
    return-void

    :cond_8
    :goto_3
    const-string p0, "setActionLinkData, actionLinkDataList is null or empty"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDoneState(Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentRetryRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;->updateState(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDoneState, uuid/result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setReadyState(Ljava/lang/String;JI)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNoteReadyState, uuid/retryState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentRetryRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;->deleteByUuid(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->createRetryEntity(Ljava/lang/String;JI)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;)V

    return-void
.end method

.method private static setSDocSearchDataFromEntry(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/util/Map$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->getSDocSearchDataFromEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->getSDocSearchDataFromEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->setSearchData(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static setSearchEntityToNoteDoc(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setSearchEntityToNoteDoc, close doc failed, e : "

    const/4 v1, 0x1

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/d;->a:Lcom/samsung/android/support/senl/nt/model/collector/common/d;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/asr/c0;->a:Lcom/samsung/android/sdk/scs/ai/asr/c0;

    invoke-static {v3}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {p0, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->setSDocSearchDataFromEntry(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/util/Map$Entry;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v5

    :goto_2
    if-ge v7, v3, :cond_3

    aget v8, v4, v7

    if-ne v8, v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput v1, v4, v7

    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {p0, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->setSDocSearchDataFromEntry(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/util/Map$Entry;)V

    goto :goto_4

    :cond_6
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->setActionLinkData(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/ToolConstructor;->makeSDocLocker(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/SDocLocker;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getCreatedTime()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getModifiedTime()J

    move-result-wide v8

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->save(Ljava/lang/String;[Ljava/lang/String;ZJJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    :goto_5
    :try_start_2
    sget-object p2, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSearchEntityToNoteDoc, exception : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_7

    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception p0

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_7
    return-void

    :goto_8
    if-eqz p0, :cond_8

    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catch_4
    move-exception p0

    sget-object p2, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_9
    throw p1
.end method
