.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->createControlSocketCallback()Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->access$000(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)V

    return-void
.end method

.method public onPacketReceived(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)V
    .locals 2
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->access$100(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->access$200(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->access$200(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;->onPacketReceived(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
