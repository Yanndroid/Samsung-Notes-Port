.class public Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;
.super Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final sIOThreadExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static volatile sInstance:Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;

.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private mDefaultTaskExecutor:Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mDelegate:Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor$2;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor$2;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->sIOThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/DefaultTaskExecutor;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/DefaultTaskExecutor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->mDefaultTaskExecutor:Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->mDelegate:Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;

    return-void
.end method

.method public static getIOThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->sIOThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->sInstance:Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->sInstance:Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;

    return-object v0

    :cond_0
    const-class v0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->sInstance:Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->sInstance:Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->sInstance:Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->mDelegate:Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeOnMainThread(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isMainThread()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->mDelegate:Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;->isMainThread()Z

    move-result v0

    return v0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->mDelegate:Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDelegate(Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->mDefaultTaskExecutor:Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->mDelegate:Lcom/samsung/android/support/senl/nt/data/database/core/executor/TaskExecutor;

    return-void
.end method
