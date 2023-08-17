.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->createFileSocketCallback()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    iget-object v0, v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    iget v2, v1, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->mStatus:I

    const/16 v3, 0x3d

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    if-ne v2, v3, :cond_0

    const/16 v2, 0x46

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/mcf/continuity/impl/ContinuityFile;->nextFileStatusUpdated(ID)V

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
    .locals 3
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    const/16 v2, 0x15

    if-eq v0, v2, :cond_1

    const/16 v2, 0x17

    if-eq v0, v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid type : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContinuityReceiveFile"

    const-string v1, "onPacketReceived"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->access$100(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;I[B)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->access$000(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;I[B)V

    return-void
.end method
