.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->createFileSocketCallback()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;

    iget-object v0, v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;

    iget v2, v1, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mStatus:I

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_0

    const/16 v2, 0x46

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPacketReceived(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)V
    .locals 5
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;

    iget-object v1, v1, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;

    iget v2, v2, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_0

    const-string p1, "ContinuitySendFile"

    const-string v2, "onPacketReceived"

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;

    iget v0, v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mSequence:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->access$000(Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid type : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContinuitySendFile"

    const-string v1, "onPacketReceived"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;

    invoke-static {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;->access$100(Lcom/samsung/android/mcf/continuity/impl/ContinuitySendFile;[B)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
