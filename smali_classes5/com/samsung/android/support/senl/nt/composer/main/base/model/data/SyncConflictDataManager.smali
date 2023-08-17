.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConflicted:Z

.field private mLiveDataIsConflicted:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mObserverIsConflicted:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShowConfirmSyncConflictDialogRunnable:Ljava/lang/Runnable;

.field private final mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SyncConflictDataManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mConflicted:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    return-void
.end method

.method private addObserverIsConflicted(Landroidx/lifecycle/Observer;Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/LifecycleOwner;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mLiveDataIsConflicted:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mObserverIsConflicted:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mObserverIsConflicted:Landroidx/lifecycle/Observer;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->isConflicted_LiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mLiveDataIsConflicted:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mObserverIsConflicted:Landroidx/lifecycle/Observer;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p3, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearReplaceConflictStrategy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->isConflicted(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getConflictStrategy(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mUuid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->updateConflictStrategy(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public connectObserver(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mObserverIsConflicted:Landroidx/lifecycle/Observer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->addObserverIsConflicted(Landroidx/lifecycle/Observer;Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onChanged(Ljava/lang/Integer;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mConflicted:Z

    if-ne v2, v1, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mConflicted:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getConflictStrategy(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mShowConfirmSyncConflictDialogRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_3
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConflicted_LiveData onChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method

.method public removeObserverIsConflicted()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mLiveDataIsConflicted:Landroidx/lifecycle/LiveData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mObserverIsConflicted:Landroidx/lifecycle/Observer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mObserverIsConflicted:Landroidx/lifecycle/Observer;

    :cond_1
    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mLiveDataIsConflicted:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public setObserverIsConflicted(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->removeObserverIsConflicted()V

    :cond_0
    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mShowConfirmSyncConflictDialogRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->addObserverIsConflicted(Landroidx/lifecycle/Observer;Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mUuid:Ljava/lang/String;

    return-void
.end method

.method public updateConflictStrategy(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/SyncConflictDataManager;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateConflictStrategy(Ljava/lang/String;I)V

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestSyncForConflictedNote(Ljava/lang/String;I)V

    return-void
.end method
