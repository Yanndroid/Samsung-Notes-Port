.class Landroidx/room/RoomTrackingLiveData;
.super Landroidx/lifecycle/LiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final mComputeFunction:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContainer:Landroidx/room/InvalidationLiveDataContainer;

.field public final mDatabase:Landroidx/room/RoomDatabase;

.field public final mInTransaction:Z

.field public final mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mInvalidationRunnable:Ljava/lang/Runnable;

.field public final mObserver:Landroidx/room/InvalidationTracker$Observer;

.field public final mRefreshRunnable:Ljava/lang/Runnable;

.field public final mRegisteredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "Landroidx/room/InvalidationLiveDataContainer;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/RoomTrackingLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/RoomTrackingLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/RoomTrackingLiveData;->mRegisteredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroidx/room/RoomTrackingLiveData$1;

    invoke-direct {v0, p0}, Landroidx/room/RoomTrackingLiveData$1;-><init>(Landroidx/room/RoomTrackingLiveData;)V

    iput-object v0, p0, Landroidx/room/RoomTrackingLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroidx/room/RoomTrackingLiveData$2;

    invoke-direct {v0, p0}, Landroidx/room/RoomTrackingLiveData$2;-><init>(Landroidx/room/RoomTrackingLiveData;)V

    iput-object v0, p0, Landroidx/room/RoomTrackingLiveData;->mInvalidationRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->mDatabase:Landroidx/room/RoomDatabase;

    iput-boolean p3, p0, Landroidx/room/RoomTrackingLiveData;->mInTransaction:Z

    iput-object p4, p0, Landroidx/room/RoomTrackingLiveData;->mComputeFunction:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData;->mContainer:Landroidx/room/InvalidationLiveDataContainer;

    new-instance p1, Landroidx/room/RoomTrackingLiveData$3;

    invoke-direct {p1, p0, p5}, Landroidx/room/RoomTrackingLiveData$3;-><init>(Landroidx/room/RoomTrackingLiveData;[Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    return-void
.end method

.method public static synthetic access$000(Landroidx/room/RoomTrackingLiveData;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getQueryExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-boolean v0, p0, Landroidx/room/RoomTrackingLiveData;->mInTransaction:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public onActive()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->mContainer:Landroidx/room/InvalidationLiveDataContainer;

    invoke-virtual {v0, p0}, Landroidx/room/InvalidationLiveDataContainer;->onActive(Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p0}, Landroidx/room/RoomTrackingLiveData;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/RoomTrackingLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInactive()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onInactive()V

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->mContainer:Landroidx/room/InvalidationLiveDataContainer;

    invoke-virtual {v0, p0}, Landroidx/room/InvalidationLiveDataContainer;->onInactive(Landroidx/lifecycle/LiveData;)V

    return-void
.end method
