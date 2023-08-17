.class public abstract Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFile:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mFileInfo:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mFileStatusListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public mSequence:I

.field public final mSocket:Ljava/net/Socket;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public mStatus:I


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mStatus:I

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSocket:Ljava/net/Socket;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ID)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->lambda$nextFileStatusUpdated$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ID)V

    return-void
.end method

.method private static synthetic lambda$nextFileStatusUpdated$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ID)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFileInfo:[B

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFile:Ljava/io/File;

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFileStatusListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSequence()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSequence:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public nextFileStatusUpdated(ID)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mStatus:I

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFileStatusListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    new-instance v0, Lk3/x;

    invoke-direct {v0, v1, p1, p2, p3}, Lk3/x;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ID)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract read()V
.end method
