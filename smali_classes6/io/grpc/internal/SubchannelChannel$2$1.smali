.class Lio/grpc/internal/SubchannelChannel$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/SubchannelChannel$2;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/internal/SubchannelChannel$2;

.field public final synthetic val$listener:Lio/grpc/ClientCall$Listener;


# direct methods
.method public constructor <init>(Lio/grpc/internal/SubchannelChannel$2;Lio/grpc/ClientCall$Listener;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/SubchannelChannel$2$1;->this$1:Lio/grpc/internal/SubchannelChannel$2;

    iput-object p2, p0, Lio/grpc/internal/SubchannelChannel$2$1;->val$listener:Lio/grpc/ClientCall$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/SubchannelChannel$2$1;->val$listener:Lio/grpc/ClientCall$Listener;

    sget-object v1, Lio/grpc/internal/SubchannelChannel;->WAIT_FOR_READY_ERROR:Lio/grpc/Status;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/grpc/ClientCall$Listener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method
