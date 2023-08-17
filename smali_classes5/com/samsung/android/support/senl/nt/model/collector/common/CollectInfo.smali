.class public Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;,
        Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddedPageIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChangedPageIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedWPages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

.field private mHasPdf:Z

.field private mNotePath:Ljava/lang/String;

.field private mNoteType:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

.field private mRemovedPageIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

.field private final mTaskType:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;

.field private final mUuid:Ljava/lang/String;

.field private mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CollectInfo"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedPageIds:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mAddedPageIds:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mRemovedPageIds:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedWPages:Ljava/util/Set;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getUuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mTaskType:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;

    return-void
.end method

.method private dumpPageInfo()V
    .locals 7

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isEngMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedPageIds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, ", "

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mAddedPageIds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mRemovedPageIds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedWPages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpPageInfo changedPageIds "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpPageInfo addedPageIds "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpPageInfo removedPageIds "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpPageInfo changedWPages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getAddedPages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getRemovedPages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private setAllPageInfo(I)V
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllPageInfo entityType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->resetPageInfo()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mHasPdf:Z

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mHasPdf:Z

    :cond_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedPageIds:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedWPages:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentStrokeRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mUuid:Ljava/lang/String;

    new-array v3, v3, [I

    const/4 v5, 0x0

    aput p1, v3, v5

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->getPageIdListByUuid(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getAddedPages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mAddedPageIds:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getRemovedPages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mRemovedPageIds:Ljava/util/Set;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->dumpPageInfo()V

    return-void
.end method

.method private setChangedPageInfo(I)V
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChangedPageInfo entityType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->resetPageInfo()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mHasPdf:Z

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mHasPdf:Z

    :cond_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedPageIds:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedWPages:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentStrokeRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mUuid:Ljava/lang/String;

    new-array v3, v3, [I

    const/4 v5, 0x0

    aput p1, v3, v5

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->getPageIdListByUuid(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getAddedPages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mAddedPageIds:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getRemovedPages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mRemovedPageIds:Ljava/util/Set;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->dumpPageInfo()V

    return-void
.end method


# virtual methods
.method public createDocument()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsSavingByWhichPid()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mNotePath:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mNotePath:Ljava/lang/String;

    const-string v2, ".sdocx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mUuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mNotePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/utils/SpenDocumentDisplayUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/util/NoteCreateModeUtil;->getNoteCreateMode()I

    move-result v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeSpenWNote(Landroid/content/Context;Ljava/lang/String;IIZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;->W_NOTE:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mNoteType:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mNotePath:Ljava/lang/String;

    const-string v2, "CONFIRMED_PASSWORD"

    new-instance v3, Lcom/samsung/android/support/senl/document/SDocLocker;

    invoke-direct {v3, v0}, Lcom/samsung/android/support/senl/document/SDocLocker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeSpenSDoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;->S_DOC:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDocument, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDocument, CollectInfo :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAddedPageIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mAddedPageIds:Ljava/util/Set;

    return-object v0
.end method

.method public getChangedPageIds()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedPageIds:Ljava/util/Set;

    return-object v0
.end method

.method public getChangedWPages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedWPages:Ljava/util/Set;

    return-object v0
.end method

.method public getLastModifiedAt()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getLastModifiedAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mNotePath:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteType()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mNoteType:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getPriority()I

    move-result v0

    return v0
.end method

.method public getRemovedPageIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mRemovedPageIds:Ljava/util/Set;

    return-object v0
.end method

.method public getSDoc()Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    return-object v0
.end method

.method public getSourceType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getSourceType()I

    move-result v0

    return v0
.end method

.method public getTaskType()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mTaskType:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;

    return-object v0
.end method

.method public getTriggerType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getTriggerType()I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object v0
.end method

.method public hasPdf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mHasPdf:Z

    return v0
.end method

.method public isValid()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mUuid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->TAG:Ljava/lang/String;

    const-string v2, "isValid, invalid uuid"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mNotePath:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->TAG:Ljava/lang/String;

    const-string v2, "isValid, invalid notePath"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_3
    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;->W_NOTE:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mNoteType:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-nez v2, :cond_5

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->TAG:Ljava/lang/String;

    const-string v2, "isValid, invalid wNote"

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    if-nez v2, :cond_5

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->TAG:Ljava/lang/String;

    const-string v2, "isValid, invalid noteDoc"

    :goto_2
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    return v1
.end method

.method public release()V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release, exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedPageIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mAddedPageIds:Ljava/util/Set;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mAddedPageIds:Ljava/util/Set;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mRemovedPageIds:Ljava/util/Set;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mRemovedPageIds:Ljava/util/Set;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedWPages:Ljava/util/Set;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedWPages:Ljava/util/Set;

    :cond_4
    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public resetPageInfo()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->TAG:Ljava/lang/String;

    const-string v1, "resetPageInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedPageIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mAddedPageIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mRemovedPageIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedWPages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedPageIds:Ljava/util/Set;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getChangedPageIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setPageInfo(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mNoteType:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;->W_NOTE:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getIsNewNote()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getSourceType()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->COMPOSER:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getTaskType()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;->PDF:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$TaskType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->setChangedPageInfo(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->setAllPageInfo(I)V

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mNotePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;->W_NOTE:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mNoteType:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo$NoteType;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", wNote: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", sDoc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mCollectParam:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getSourceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isEngMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->mChangedPageIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
