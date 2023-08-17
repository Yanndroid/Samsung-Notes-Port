.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/DocContract;


# static fields
.field private static final DELAYTIME_SHOW_PROGRESS_TO_SAVE:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

.field private final mComposerLifeState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

.field private final mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private final mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

.field private final mDMServiceManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

.field private mInitialized:Z

.field private final mIsSavingState:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

.field private mRunnableAfterCompletedSave:Ljava/lang/Runnable;

.field private mSavingListener:Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldCallRequestSyncFirst:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ComposerModelContractImpl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mShouldCallRequestSyncFirst:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mDMServiceManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mComposerLifeState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->setContract(Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/DocContract;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mInitialized:Z

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mIsSavingState:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mInitialized:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mShouldCallRequestSyncFirst:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mShouldCallRequestSyncFirst:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->handleCompletedSave()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->handleFailedSave()V

    return-void
.end method

.method public static bridge synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getSavingListener()Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mSavingListener:Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mSavingListener:Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mSavingListener:Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;

    return-object v0
.end method

.method private getSavingTempListener()Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mSavingListener:Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mSavingListener:Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mSavingListener:Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;

    return-object v0
.end method

.method private handleCompletedSave()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mRunnableAfterCompletedSave:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mRunnableAfterCompletedSave:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->setSavingState(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mInitialized:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mComposerLifeState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->updateDataRepository(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->hideProgress(IZ)V

    return-void
.end method

.method private handleFailedSave()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->setSavingState(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->hideProgress(IZ)V

    return-void
.end method


# virtual methods
.method public changeDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mDMServiceManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->changeDocument(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public isSavingState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mIsSavingState:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mIsSavingState:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mInitialized:Z

    return-void
.end method

.method public requestDiscard()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mDMServiceManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->discard()V

    :cond_0
    return-void
.end method

.method public requestSave(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZZ)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->requestReadyForSave()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->setSavingState(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mDMServiceManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->getSavingListener()Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->save(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;Z)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object p1

    const/16 p2, 0x3e8

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->showProgress(II)V

    :cond_0
    return-void
.end method

.method public requestSaveCache(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZZ)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->updateBodyTextPage()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->setSavingState(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mDMServiceManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->getSavingListener()Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->saveCache(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZLcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object p1

    const/16 p2, 0x3e8

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->showProgress(II)V

    :cond_0
    return-void
.end method

.method public requestSaveToDevice()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mComposerLifeState:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/SyncAccessHandler;->createImportDocumentManager(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract;->execute()V

    return-void
.end method

.method public requestSnapSave(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZZ)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->addSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->addSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->updateBodyTextPage()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->setSavingState(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mDMServiceManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->getSavingTempListener()Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->snapSave(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZLcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object p1

    const/16 p2, 0x3e8

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->showProgress(II)V

    :cond_0
    return-void
.end method

.method public setComposerViewPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    return-void
.end method

.method public setRunnableAfterCompletedSave(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mRunnableAfterCompletedSave:Ljava/lang/Runnable;

    return-void
.end method

.method public setSavingState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mIsSavingState:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mIsSavingState:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->setValue(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mRunnableAfterCompletedSave:Ljava/lang/Runnable;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setShouldCallRequestSyncFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->mShouldCallRequestSyncFirst:Z

    return-void
.end method
