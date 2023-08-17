.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener$Contract;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ReloadDocListener$Contract;
.implements Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentServiceListener;
.implements Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener$Contract<",
        "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
        ">;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ReloadDocListener$Contract<",
        "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
        ">;",
        "Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentServiceListener;",
        "Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$SyncListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field public final mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;"
        }
    .end annotation
.end field

.field private mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;"
        }
    .end annotation
.end field

.field private mOldDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;"
        }
    .end annotation
.end field

.field public mSaveStrategy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;

.field private mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

.field private mSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DocumentServiceManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->createCustomSaveStrategy()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mSaveStrategy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    return-object p0
.end method

.method private closeDocument(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mSaveStrategy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;->onClose(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    const-string v0, "closeDocument# state is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mSubscriptionId:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    return-void
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public changeDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->setChangingUuid(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->openDocument(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public closeDoc(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->closeDocument(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    :cond_0
    return-void
.end method

.method public closeOldDoc()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mOldDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->closeDocument(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mOldDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    :cond_0
    return-void
.end method

.method public connect(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$DocumentServiceConnection;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public createCustomSaveStrategy()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;-><init>()V

    return-object v0
.end method

.method public discard()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->discardQuickSave(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    const-string v0, "disconnect# service is not connected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "disconnect# unsubscribe service"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->unregisterSyncListener(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$SyncListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->unregisterDocumentServiceListener(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentServiceListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->unsubscribe()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "disconnect unbindService"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    return-void
.end method

.method public onChangedDocumentByUser(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedDocumentByUser# modifier : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", uuid : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onChangedDocumentByUser# uuid id not matched."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->onReadyReload(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onChangedWorkingState(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedWorkingState, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", workingState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", owner : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->onChangedWorkingState(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    return-void
.end method

.method public onFailedToReload()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "onFailedToReload"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->onReloadedDocument(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    return-void
.end method

.method public onForceClosedDocument()V
    .locals 0

    return-void
.end method

.method public onLoadDocCompleted(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "onLoadDocCompleted doc open :"

    invoke-static {v0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->endTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->isInProgressNoteChange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mOldDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->onChangedDoc(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->onLoadDocCompleted(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    return-void
.end method

.method public onLoadDocFailed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadDocFailed# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->isInProgressNoteChange()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "fail to open a selected note. Restore a previous status"

    invoke-static {p2, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mOldDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->clearChangingInfo()V

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->onLoadDocFailed(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public onOpenedByUser(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onReadyToDownloadDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->needToPendingSyncForComposerBusy(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onReadyToReplaceDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->needToConflictSyncForComposerEdit(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onReceiveBroadcastMessage(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveBroadcastMessage, sender : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->onReceiveBroadcastMessage(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Landroid/content/Intent;)V

    return-void
.end method

.method public onReloaded(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->onReloadedDocument(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    return-void
.end method

.method public openDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->startTime(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->getOpenParam(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->setDocPath(Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener;

    invoke-direct {v5, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener$Contract;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocCacheListener;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mSaveStrategy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;

    move-object v2, p1

    move-object v4, p0

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocCacheListener;-><init>(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener$Contract;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenDocListener;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object p2

    const-string v1, "DocumentServiceConnection"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->makeDocRepository(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mSaveStrategy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;->onOpen(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->openCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method public resetOldNote()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->closeDoc(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mOldDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mOldDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    return-void
.end method

.method public save(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "save#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mSaveStrategy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;->onSave(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-virtual {v0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->save(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->showDebugMessageToast(Ljava/lang/String;)V

    return-void
.end method

.method public saveCache(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZLcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;Z",
            "Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "saveCache# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mSaveStrategy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;->onSaveCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->saveCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    const-string p2, "saveCache#"

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->showDebugMessageToast(Ljava/lang/String;)V

    return-void
.end method

.method public snapSave(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZLcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;Z",
            "Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "snapSave# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mSaveStrategy:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;->onSaveCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mService:Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;->snapSave(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;

    const-string p2, "snapSave#"

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;->showDebugMessageToast(Ljava/lang/String;)V

    return-void
.end method
