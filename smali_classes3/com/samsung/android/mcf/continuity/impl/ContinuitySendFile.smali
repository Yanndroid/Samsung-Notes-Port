.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;
.super Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;
.source "SourceFile"


# static fields
.field private static final READ_BUF_SIZE:I = 0x19000

.field private static final TAG:Ljava/lang/String; = "ContinuitySendFile"


# instance fields
.field private final mTargetBtMac:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;I[BLjava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .locals 0
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;-><init>(Ljava/net/Socket;)V

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->mTargetBtMac:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSequence:I

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFileInfo:[B

    iput-object p5, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFile:Ljava/io/File;

    iput-object p6, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFileStatusListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->mTargetBtMac:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->handleFileTransferResponsePacket([B)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->lambda$sendFileInfo$0()V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->lambda$sendFileData$1()V

    return-void
.end method

.method private createFileSocketCallback()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile$1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->lambda$read$2()V

    return-void
.end method

.method private handleFileTransferResponsePacket([B)V
    .locals 5
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/Utils;->bytesToInt([B)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-string v1, "ContinuitySendFile"

    const-string v2, "handleFileTransferAcceptPacket"

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSequence:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->mTargetBtMac:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    const-string p1, "ContinuitySendFile"

    const-string v1, "handleFileTransferAcceptPacket"

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_1

    const-string v1, "ContinuitySendFile"

    const-string v2, "handleFileTransferDenyPacket"

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid confirm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x29

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x2a

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private synthetic lambda$read$2()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSocket:Ljava/net/Socket;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->createFileSocketCallback()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->readSocket(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;)V

    return-void
.end method

.method private synthetic lambda$sendFileData$1()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSequence:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->mTargetBtMac:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySendFile"

    const-string v3, "sendFileData"

    invoke-static {v1, v3, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/16 v3, 0x3e

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFile:Ljava/io/File;

    if-nez v5, :cond_0

    const-string v2, "ContinuitySendFile"

    const-string v5, "sendFileData"

    const-string v6, "null mFile"

    invoke-static {v2, v5, v6}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    :try_start_3
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFile:Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    const-string v2, "ContinuitySendFile"

    const-string v4, "sendFileData"

    const-string v5, "empty file"

    invoke-static {v2, v4, v5}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    return-void

    :cond_1
    move-object v1, p0

    move-wide v3, v8

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->sendFileData(IJLjava/io/FileInputStream;Ljava/io/OutputStream;)V

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close IOException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySendFile"

    const-string v2, "sendFileData"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_1
    move-exception v2

    const-string v5, "ContinuitySendFile"

    const-string v6, "sendFileData"

    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileInputStream FileNotFoundException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catch_2
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOutputStream IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ContinuitySendFile"

    const-string v5, "sendFileData"

    invoke-static {v4, v5, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method

.method private synthetic lambda$sendFileInfo$0()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x3e

    const-wide/16 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "ContinuitySendFile"

    const-string v5, "sendFileInfo"

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "null mFile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->mTargetBtMac:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_1

    const-string v1, "ContinuitySendFile"

    const-string v5, "sendFileInfo"

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "empty file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->mTargetBtMac:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFileInfo:[B

    if-eqz v1, :cond_3

    array-length v1, v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-static {v5, v6}, Lcom/samsung/android/mcf/continuity/common/Utils;->longToBytes(J)[B

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFileInfo:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x8

    new-array v5, v5, [B

    array-length v6, v1

    const/4 v7, 0x0

    invoke-static {v1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mFileInfo:[B

    array-length v1, v1

    array-length v8, v6

    invoke-static {v6, v7, v5, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSequence:I

    invoke-static {v5}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v5

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->mTargetBtMac:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ContinuitySendFile"

    const-string v7, "sendFileInfo"

    invoke-static {v6, v7, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->newBuilder()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    const/16 v6, 0x15

    invoke-virtual {v0, v6}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setType(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setId(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessageLite;->writeDelimitedTo(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySendFile"

    const-string v5, "sendFileInfo"

    invoke-static {v1, v5, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    return-void

    :cond_3
    :goto_0
    const-string v1, "ContinuitySendFile"

    const-string v5, "sendFileInfo"

    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid fileInfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->mTargetBtMac:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private sendFileData(IJLjava/io/FileInputStream;Ljava/io/OutputStream;)V
    .locals 20
    .param p4    # Ljava/io/FileInputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-wide/from16 v2, p2

    const-string v4, "sendFileData"

    const-string v5, "ContinuitySendFile"

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->newBuilder()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v6

    const v7, 0x19000

    new-array v7, v7, [B

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    :goto_0
    const/16 v12, 0x3e

    move-object/from16 v13, p4

    :try_start_0
    invoke-virtual {v13, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v15, -0x1

    if-ne v14, v15, :cond_0

    const-string v0, "readLen is -1"

    :goto_1
    invoke-static {v5, v4, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v12, v10, v11}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    goto/16 :goto_3

    :cond_0
    const/4 v15, 0x0

    invoke-static {v7, v15, v14}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v0, "empty byteString"

    goto :goto_1

    :cond_1
    const/16 v15, 0x17

    invoke-virtual {v6, v15}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setType(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v15

    invoke-virtual {v15, v0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setId(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    move-object/from16 v12, p5

    :try_start_1
    invoke-virtual {v15, v12}, Lcom/google/protobuf/AbstractMessageLite;->writeDelimitedTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v14}, Lcom/google/protobuf/ByteString;->size()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    long-to-double v10, v8

    long-to-double v14, v2

    div-double/2addr v10, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v14

    mul-double v16, v10, v14

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x2b

    invoke-virtual {v1, v6, v10, v11}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    cmp-long v6, v8, v2

    if-ltz v6, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->mTargetBtMac:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {v1, v0, v10, v11}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    goto :goto_3

    :cond_2
    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeDelimitedTo IOException : "

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read IOException : "

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3e

    invoke-virtual {v1, v2, v10, v11}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    :goto_3
    return-void
.end method


# virtual methods
.method public read()V
    .locals 1

    new-instance v0, Lk3/e0;

    invoke-direct {v0, p0}, Lk3/e0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendFileData()V
    .locals 1

    new-instance v0, Lk3/d0;

    invoke-direct {v0, p0}, Lk3/d0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendFileInfo()V
    .locals 1

    new-instance v0, Lk3/c0;

    invoke-direct {v0, p0}, Lk3/c0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method
