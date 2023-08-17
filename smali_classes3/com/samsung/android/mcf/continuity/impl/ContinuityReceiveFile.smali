.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;
.super Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuityReceiveFile"


# instance fields
.field private mFileInfoListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFileOutputStream:Ljava/io/FileOutputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mReceivedFileLength:J

.field private final mSrcBtMac:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mTotalFileLength:J


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .locals 0
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;-><init>(Ljava/net/Socket;)V

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mSrcBtMac:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mFileInfoListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->handleFileTransferRequestPacket(I[B)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->handleFileTransferDataPacket(I[B)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->lambda$read$3()V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->lambda$nextFileInfoReceived$1(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    return-void
.end method

.method private createFileSocketCallback()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile$1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->lambda$handleFileTransferDataPacket$2(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->lambda$sendFileTransferResponse$0(II)V

    return-void
.end method

.method private handleFileTransferDataPacket(I[B)V
    .locals 9
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v1, p1, :cond_0

    const-string p2, "ContinuityReceiveFile"

    const-string v1, "handleFileTransferDataPacket"

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSequence:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mSrcBtMac:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x33

    if-eq v1, v2, :cond_1

    const-string p1, "ContinuityReceiveFile"

    const-string p2, "handleFileTransferDataPacket"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mSrcBtMac:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    iget-wide v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mReceivedFileLength:J

    long-to-double v3, v3

    iget-wide v5, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mTotalFileLength:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v7, 0x3e

    if-nez v1, :cond_2

    const-string p1, "ContinuityReceiveFile"

    const-string p2, "handleFileTransferDataPacket"

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null mFileOutputStream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mSrcBtMac:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-instance v0, Lk3/b0;

    invoke-direct {v0, p0, p1}, Lk3/b0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;I)V

    const-string p1, "ContinuityReceiveFile"

    const-string v8, "handleFileTransferDataPacket"

    invoke-static {p1, v8, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    :try_start_4
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    iget-wide v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mReceivedFileLength:J

    array-length p2, p2

    int-to-long v3, p2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mReceivedFileLength:J

    long-to-double v0, v0

    iget-wide v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mTotalFileLength:J

    long-to-double v3, v3

    div-double/2addr v0, v3

    mul-double/2addr v0, v5

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    cmpl-double p1, v0, v5

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "success : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mSrcBtMac:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContinuityReceiveFile"

    const-string v2, "handleFileTransferDataPacket"

    invoke-static {p2, v2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3d

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    :cond_3
    return-void

    :catchall_0
    move-exception p2

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "write IOException "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContinuityReceiveFile"

    const-string v0, "handleFileTransferDataPacket"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    return-void

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method

.method private handleFileTransferRequestPacket(I[B)V
    .locals 7
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid payload = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mSrcBtMac:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContinuityReceiveFile"

    const-string v0, "handleTransferRequestPacket"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v2, p2

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_1

    const-string p1, "ContinuityReceiveFile"

    const-string p2, "handleTransferRequestPacket"

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/Utils;->bytesToLong([B)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mTotalFileLength:J

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSequence:I

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFileIdImpl;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mSrcBtMac:Ljava/lang/String;

    const-string v3, "THIS_DEVICE"

    invoke-direct {v0, v2, v3, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFileIdImpl;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "ContinuityReceiveFile"

    const-string v3, "handleFileTransferRequestPacket"

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mTotalFileLength:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mSrcBtMac:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->nextFileInfoReceived(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private synthetic lambda$handleFileTransferDataPacket$2(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mSrcBtMac:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$nextFileInfoReceived$1(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;->onFileInfoReceived(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    return-void
.end method

.method private synthetic lambda$read$3()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSocket:Ljava/net/Socket;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->createFileSocketCallback()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->readSocket(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;)V

    return-void
.end method

.method private synthetic lambda$sendFileTransferResponse$0(II)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mSrcBtMac:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityReceiveFile"

    const-string v2, "sendFileTransferResponse"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->newBuilder()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    const/16 v3, 0x16

    invoke-virtual {v0, v3}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setType(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setId(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/Utils;->intToBytes(I)[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    const-wide/16 v3, 0x0

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSocket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/AbstractMessageLite;->writeDelimitedTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x33

    :goto_0
    invoke-virtual {p0, p1, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IOException : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3e

    goto :goto_0
.end method

.method private nextFileInfoReceived(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V
    .locals 2
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x32

    :try_start_0
    iput v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mStatus:I

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mFileInfoListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    new-instance v0, Lk3/y;

    invoke-direct {v0, v1, p1, p2}, Lk3/y;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

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

.method private sendFileTransferResponse(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSequence:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lk3/a0;

    invoke-direct {v0, p0, v1, p1}, Lk3/a0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;II)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setFile(Ljava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFile:Ljava/io/File;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFileStatusListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mFileOutputStream:Ljava/io/FileOutputStream;

    monitor-exit v2

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileOutputStream FileNotFoundException : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContinuityReceiveFile"

    const-string/jumbo v1, "setFile"

    invoke-static {p2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    :goto_0
    const-string p1, "ContinuityReceiveFile"

    const-string/jumbo p2, "setFile"

    const-string v1, "null file or fileStatusListenerWrapper"

    invoke-static {p1, p2, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public close()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mFileInfoListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ContinuityReceiveFile"

    const-string v3, "close"

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-super {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public read()V
    .locals 1

    new-instance v0, Lk3/z;

    invoke-direct {v0, p0}, Lk3/z;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public responseReceiveFile(ILjava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z
    .locals 2
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid confirm = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContinuityReceiveFile"

    const-string p3, "handleTransferRequestPacket"

    invoke-static {p2, p3, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->setFile(Ljava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->sendFileTransferResponse(I)V

    return v0

    :cond_1
    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->sendFileTransferResponse(I)V

    return v0
.end method
