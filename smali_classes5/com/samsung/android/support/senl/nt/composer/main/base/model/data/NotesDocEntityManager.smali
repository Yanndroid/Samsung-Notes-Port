.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnRemovedListener;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

.field private mCreatedTime:J

.field private mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSkipOnRemovedListener:Z

.field private mLastModifiedTime:J

.field private mLiveDataNotesDoc:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

.field private final mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

.field private mOldNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

.field private mOnRemovedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnRemovedListener;

.field private mOnTitleDataChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;

.field private final mPageRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

.field private final mSyncConflictManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesDocEntityManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mIsSkipOnRemovedListener:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mCreatedTime:J

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mLastModifiedTime:J

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesDocumentPageRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mPageRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;-><init>(Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mSyncConflictManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mLiveDataNotesDoc:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;)Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    return-object p0
.end method

.method private checkInValidEntity()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isUserMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->TAG:Ljava/lang/String;

    const-string v1, "checkValidEntity  mNotesDocumentEntity is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private releaseObserver()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mLiveDataNotesDoc:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mSyncConflictManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->removeObserverIsConflicted()V

    return-void
.end method

.method private setDeleteState(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getFolderUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsDeleted(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setAbsolutePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setRecycleBinTimeMoved(J)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->setFolderUuid(Ljava/lang/String;)V

    return-void
.end method

.method private updateDocumentEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->setEntity(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->updateOriginalEntityWithLatest()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mOldNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDocumentEntity, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateEntityFromDocState(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->isExist()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->TAG:Ljava/lang/String;

    const-string v1, "updateEntityFromDocState#"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsFavorite(I)V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    return-void
.end method


# virtual methods
.method public connectObserver(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mLiveDataNotesDoc:Landroidx/lifecycle/LiveData;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->initNoteDocEntity(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mSyncConflictManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->connectObserver(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public getCreatedTime()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->getCreatedTime()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFolderColor(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    return v0
.end method

.method public getFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getFolderName# categoryTreeEntity is null : folderUuid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public getFolderUuid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->TAG:Ljava/lang/String;

    const-string v1, "getFolderUuid# null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mLastModifiedTime:J

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mLastModifiedTime:J

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->getModifiedTime()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mLastModifiedTime:J

    return-wide v0
.end method

.method public getLockAccountGuid()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLockAccountGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotesDocumentEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    return-object v0
.end method

.method public getNotesDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    return-object v0
.end method

.method public getPageRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mPageRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    return-object v0
.end method

.method public getRecycleBinTimeMoved()J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecycleBinTimeMoved()J

    move-result-wide v0

    return-wide v0
.end method

.method public getServerTimeStamp()J
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_1
    return-wide v1
.end method

.method public getServerTimeStampFromRepository()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSyncConflictManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mSyncConflictManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public initNoteDocEntity(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mLiveDataNotesDoc:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get_LiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mLiveDataNotesDoc:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public insertToDB(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setId(Ljava/lang/Long;)V

    invoke-virtual {p3, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUuid(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFilePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    const/4 p1, 0x1

    return p1
.end method

.method public invertBackgroundColor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setBackgroundColorInverted(I)V

    return-void
.end method

.method public isDeleted()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isExist()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isFavoriteNote()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isFolderDeleted(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getIsDeleted()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isLocked()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isObserving()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mLiveDataNotesDoc:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onChanged(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 7

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mOnRemovedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnRemovedListener;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mIsSkipOnRemovedListener:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnRemovedListener;->onRemoved()V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDocumentDatabaseObserver#onChanged#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isFavorite : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", modifiedAt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", isDeleted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", serverTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mOnTitleDataChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->isFolderDeleted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mOnTitleDataChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;->onDeletedFolder()V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v3

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mOnTitleDataChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    invoke-interface {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;->onChangedFavorite(Z)V

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_6

    iget-wide v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mCreatedTime:J

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mCreatedTime:J

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mOnTitleDataChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;->onChangedCreatedTime(J)V

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    iget-wide v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mLastModifiedTime:J

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mLastModifiedTime:J

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mOnTitleDataChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;->onChangedLastModifiedTime(J)V

    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getCategoryIsDirty()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getCategoryIsDirty()I

    move-result v3

    if-eq v0, v3, :cond_a

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getCategoryIsDirty()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setCategoryIsDirty(I)V

    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getCategoryServerTimeStamp()Ljava/lang/Long;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getCategoryServerTimeStamp()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getCategoryServerTimeStamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setCategoryServerTimeStamp(Ljava/lang/Long;)V

    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1

    :cond_c
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getWidgetId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setWidgetId(I)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->updateDocumentEntity(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mOnTitleDataChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;->onChangedFolder(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->onChanged(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method

.method public release()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->releaseObserver()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public restore()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mOldNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->TAG:Ljava/lang/String;

    const-string v1, "mOldNotesDocumentEntity is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->restoreByUuidWithSyncTimestampUpdate(Ljava/util/Collection;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setBackgroundColor(I)V

    return-void
.end method

.method public setDocState(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->TAG:Ljava/lang/String;

    const-string v1, "setDocState# remove observer"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->releaseObserver()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->updateEntityFromDocState(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mUuid:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mSyncConflictManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->setUuid(Ljava/lang/String;)V

    return-void
.end method

.method public setFolderUuid(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFolderUuid# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    return-void
.end method

.method public setIsSkipOnRemovedListener(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mIsSkipOnRemovedListener:Z

    return-void
.end method

.method public setNoteFavorite(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->updateFavorite(Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsFavorite(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mOnTitleDataChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;->onChangedFavorite(Z)V

    :cond_1
    return-void
.end method

.method public setNotesDocumentEntity(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mUuid:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mSyncConflictManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->setUuid(Ljava/lang/String;)V

    return-void
.end method

.method public setOnRemovedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnRemovedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mOnRemovedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnRemovedListener;

    return-void
.end method

.method public setOnTitleDataChangedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mOnTitleDataChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnTitleDataChangedListener;

    return-void
.end method

.method public setOpenedTime(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateDeleteState(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->setDeleteState(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p2, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->delete(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

    return-void
.end method

.method public updateLockEntity(ZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->checkInValidEntity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsLock(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLockAccountGuid(Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLockEntity# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
