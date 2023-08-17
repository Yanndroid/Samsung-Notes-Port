.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuityConnection"


# instance fields
.field private final mBtMac:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectionCallbackLock:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContinuityReceiveFileList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mContinuitySendFileMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mControlSocket:Ljava/net/Socket;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mControlSocketCallback:Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mIp:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mMessageId:B

.field private final mMessageIdLock:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mPort:I

.field private mSendFileSequence:I

.field private final mSendFileSequenceLock:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mSendMessageCallbackMap:Landroid/util/ArrayMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Byte;",
            "Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mConnectionCallbackLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mMessageIdLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mMessageId:B

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mSendFileSequenceLock:Ljava/lang/Object;

    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mSendFileSequence:I

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mBtMac:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mIp:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mPort:I

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mControlSocketCallback:Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mSendMessageCallbackMap:Landroid/util/ArrayMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mContinuitySendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mContinuityReceiveFileList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/net/Socket;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->lambda$setControlSocket$3(Ljava/net/Socket;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->onControlSocketDisconnected()V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mConnectionCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mControlSocketCallback:Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->handleSendFileStatusUpdated(IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->handleReceiveFileStatusUpdated(IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->handleFileInfoReceived(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/net/Socket;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->lambda$addFileSocket$11(Ljava/net/Socket;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->lambda$sendMessage$5(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;I)V

    return-void
.end method

.method private closeReceiveFile(IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .locals 3
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mBtMac:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityConnection"

    const-string v2, "closeReceiveFile"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mContinuityReceiveFileList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->close()V

    :cond_0
    invoke-virtual {p5, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    return-void
.end method

.method private closeSendFile(IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .locals 3
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mBtMac:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityConnection"

    const-string v2, "closeSendFile"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mContinuitySendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->close()V

    :cond_0
    invoke-virtual {p5, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    return-void
.end method

.method private createControlSocketCallback()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)V

    return-object v0
.end method

.method private createFileInfoListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
    .locals 1
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$4;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-object v0
.end method

.method public static createInstance(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;)Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;)V

    return-object v0
.end method

.method private createReceiveFileStatusListenerWrapper(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
    .locals 1
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$3;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    return-object v0
.end method

.method private createSendFileStatusListenerWrapper(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
    .locals 1
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$2;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->lambda$sendMessage$4(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->lambda$setControlSocket$1(Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->lambda$handleFileInfoReceived$10(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->lambda$sendMessage$6(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    return-void
.end method

.method public static synthetic h(IID)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->lambda$handleSendFileStatusUpdated$7(IID)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleFileInfoReceived(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .locals 3
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lk3/t;

    invoke-direct {v0, p0, p1}, Lk3/t;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;)V

    const-string v1, "ContinuityConnection"

    const-string v2, "handleFileInfoReceived"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;->onFileInfoReceived(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    return-void
.end method

.method private handleReceiveFileStatusUpdated(IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .locals 7
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v6, Lk3/s;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lk3/s;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;IID)V

    const-string v0, "ContinuityConnection"

    const-string v1, "handleReceiveFileStatusUpdated"

    invoke-static {v0, v1, v6}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    const/16 v2, 0x33

    if-eq p2, v2, :cond_0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid status : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->closeReceiveFile(IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p5, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleSendFileStatusUpdated(IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .locals 3
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v0, Lk3/r;

    invoke-direct {v0, p1, p2, p3, p4}, Lk3/r;-><init>(IID)V

    const-string v1, "ContinuityConnection"

    const-string v2, "handleSendFileStatusUpdated"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid status : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p5}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->sendFileData(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p5, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    goto :goto_0

    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->closeSendFile(IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic i(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/util/function/Consumer;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->lambda$connectAndSetControlSocket$0(Ljava/util/function/Consumer;Ljava/net/Socket;)V

    return-void
.end method

.method public static synthetic j(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;[BLjava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->lambda$sendFile$8(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;[BLjava/io/File;)V

    return-void
.end method

.method public static synthetic k(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;IID)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->lambda$handleReceiveFileStatusUpdated$9(IID)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->lambda$setControlSocket$2(Ljava/net/Socket;)V

    return-void
.end method

.method private synthetic lambda$addFileSocket$11(Ljava/net/Socket;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    invoke-direct {p0, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->createFileInfoListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;-><init>(Ljava/net/Socket;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mContinuityReceiveFileList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->read()V

    return-void
.end method

.method private synthetic lambda$connectAndSetControlSocket$0(Ljava/util/function/Consumer;Ljava/net/Socket;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mIp:Ljava/lang/String;

    const-string v1, "connectAndSetControlSocket"

    const-string v2, "ContinuityConnection"

    if-nez v0, :cond_0

    const-string p2, "null Ip"

    :goto_0
    invoke-static {v2, v1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mPort:I

    invoke-static {v0, v3}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->createSocketAddress(Ljava/lang/String;I)Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->connectSocket(Ljava/net/Socket;Ljava/net/SocketAddress;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "connect fail"

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->setControlSocket(Ljava/net/Socket;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$handleFileInfoReceived$10(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;->getFileSequence()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mBtMac:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$handleReceiveFileStatusUpdated$9(IID)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mBtMac:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$handleSendFileStatusUpdated$7(IID)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$sendFile$8(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;[BLjava/io/File;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mBtMac:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityConnection"

    const-string v2, "sendFile"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->createSocket()Ljava/net/Socket;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mIp:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mPort:I

    invoke-static {v0, v3}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->createSocketAddress(Ljava/lang/String;I)Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->connectSocket(Ljava/net/Socket;Ljava/net/SocketAddress;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "connect fail"

    invoke-static {v1, v2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3e

    const-wide/16 p3, 0x0

    invoke-virtual {p2, p1, p3, p4}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;

    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mBtMac:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->createSendFileStatusListenerWrapper(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    move-result-object v9

    move-object v3, v0

    move v6, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;-><init>(Ljava/net/Socket;Ljava/lang/String;I[BLjava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    iget-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mContinuitySendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;

    if-eqz p1, :cond_1

    const-string p2, "close prevContinuityFileSocket"

    invoke-static {v1, v2, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->close()V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->read()V

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->sendFileInfo()V

    return-void
.end method

.method private static synthetic lambda$sendMessage$4(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packetId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$sendMessage$5(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    return-void
.end method

.method private synthetic lambda$sendMessage$6(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .locals 4

    new-instance v0, Lk3/k;

    invoke-direct {v0, p1}, Lk3/k;-><init>(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)V

    const-string v1, "ContinuityConnection"

    const-string v2, "sendMessage"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mControlSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->writeDelimitedTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->onControlSocketDisconnected()V

    :cond_0
    const/4 p1, -0x1

    :goto_0
    new-instance v0, Lk3/i;

    invoke-direct {v0, p2, p1}, Lk3/i;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;I)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setControlSocket$1(Ljava/net/Socket;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btMac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mBtMac:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", socket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$setControlSocket$2(Ljava/net/Socket;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->createControlSocketCallback()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->readSocket(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;)V

    return-void
.end method

.method private synthetic lambda$setControlSocket$3(Ljava/net/Socket;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mControlSocket:Ljava/net/Socket;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private onControlSocketDisconnected()V
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mConnectionCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mControlSocketCallback:Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;->onDisconnected()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendFileData(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .locals 3
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mBtMac:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityConnection"

    const-string v2, "sendFileData"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mContinuitySendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0x3e

    :goto_0
    invoke-virtual {p2, p1, v0, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->sendFileData()V

    const/16 p1, 0x29

    goto :goto_0
.end method


# virtual methods
.method public addFileSocket(Ljava/lang/String;Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btMac : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityConnection"

    const-string v2, "addFileSocket"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk3/o;

    invoke-direct {v0, p0, p2, p1, p3}, Lk3/o;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/net/Socket;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public connectAndSetControlSocket(Ljava/net/Socket;Ljava/util/function/Consumer;)V
    .locals 3
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ContinuityConnection"

    const-string v1, "connectAndSetControlSocket"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk3/q;

    invoke-direct {v0, p0, p2, p1}, Lk3/q;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/util/function/Consumer;Ljava/net/Socket;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public destroy()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "ContinuityConnection"

    const-string v1, "destroy"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mConnectionCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mControlSocketCallback:Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mControlSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mContinuitySendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mContinuitySendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mContinuityReceiveFileList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->close()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mContinuityReceiveFileList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mSendMessageCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getIp()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()B
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mMessageIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-byte v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mMessageId:B

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementMessageId()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mMessageIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-byte v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mMessageId:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mMessageId:B

    if-nez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mMessageId:B

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putSendMessageCallback(BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .locals 1
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mSendMessageCallbackMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    :cond_0
    return-void
.end method

.method public removeSendMessageCallback(B)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mSendMessageCallbackMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    return-object p1
.end method

.method public responseReceiveFile(IILjava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z
    .locals 3
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mContinuityReceiveFileList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->getSequence()I

    move-result v2

    if-ne v2, p2, :cond_0

    if-eqz p4, :cond_1

    invoke-direct {p0, p2, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->createReceiveFileStatusListenerWrapper(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v1, p1, p3, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->responseReceiveFile(ILjava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public sendFile([BLjava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
    .locals 8
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mIp:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "ContinuityConnection"

    const-string p2, "sendFile"

    const-string p3, "null IP"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mSendFileSequenceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v7, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mSendFileSequence:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mSendFileSequence:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lk3/l;

    move-object v1, v0

    move-object v2, p0

    move v3, v7

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lk3/l;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;[BLjava/io/File;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    new-instance p1, Lcom/samsung/android/mcf/continuity/impl/ContinuityFileIdImpl;

    iget-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mBtMac:Ljava/lang/String;

    const-string p3, "THIS_DEVICE"

    invoke-direct {p1, p3, p2, v7}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFileIdImpl;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sendMessage(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lk3/m;

    invoke-direct {v0, p0, p1, p2}, Lk3/m;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setControlSocket(Ljava/net/Socket;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lk3/j;

    invoke-direct {v0, p0, p1}, Lk3/j;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/net/Socket;)V

    const-string v1, "ContinuityConnection"

    const-string/jumbo v2, "setControlSocket"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    new-instance v0, Lk3/n;

    invoke-direct {v0, p0, p1}, Lk3/n;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/net/Socket;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->mControlSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    const-string v3, "close prevControlSocket"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    :cond_0
    new-instance v0, Lk3/p;

    invoke-direct {v0, p0, p1, p2}, Lk3/p;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/net/Socket;Ljava/util/function/Consumer;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method
