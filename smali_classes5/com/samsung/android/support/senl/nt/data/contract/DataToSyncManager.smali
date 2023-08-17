.class public Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager$DataObserver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;


# instance fields
.field private mObserver:Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager$DataObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->sInstance:Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->sInstance:Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->sInstance:Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public init(Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager$DataObserver;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager$DataObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->mObserver:Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager$DataObserver;

    return-void
.end method

.method public onCoeditDocumentSaved(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->mObserver:Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager$DataObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager$DataObserver;->onCoeditDocumentSaved(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onMappedDocumentChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->mObserver:Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager$DataObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager$DataObserver;->onMappedDocumentChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPostDocumentSaved(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->mObserver:Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager$DataObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager$DataObserver;->onPostDocumentSaved(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    :cond_0
    return-void
.end method

.method public onTagUpdated(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->mObserver:Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager$DataObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager$DataObserver;->onTagUpdated(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method
