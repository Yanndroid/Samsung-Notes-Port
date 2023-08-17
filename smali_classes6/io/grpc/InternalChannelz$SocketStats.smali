.class public final Lio/grpc/InternalChannelz$SocketStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SocketStats"
.end annotation


# instance fields
.field public final data:Lio/grpc/InternalChannelz$TransportStats;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final local:Ljava/net/SocketAddress;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final remote:Ljava/net/SocketAddress;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final security:Lio/grpc/InternalChannelz$Security;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final socketOptions:Lio/grpc/InternalChannelz$SocketOptions;


# direct methods
.method public constructor <init>(Lio/grpc/InternalChannelz$TransportStats;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/InternalChannelz$SocketOptions;Lio/grpc/InternalChannelz$Security;)V
    .locals 0
    .param p2    # Ljava/net/SocketAddress;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/net/SocketAddress;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/InternalChannelz$SocketStats;->data:Lio/grpc/InternalChannelz$TransportStats;

    const-string p1, "local socket"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/SocketAddress;

    iput-object p1, p0, Lio/grpc/InternalChannelz$SocketStats;->local:Ljava/net/SocketAddress;

    iput-object p3, p0, Lio/grpc/InternalChannelz$SocketStats;->remote:Ljava/net/SocketAddress;

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/InternalChannelz$SocketOptions;

    iput-object p1, p0, Lio/grpc/InternalChannelz$SocketStats;->socketOptions:Lio/grpc/InternalChannelz$SocketOptions;

    iput-object p5, p0, Lio/grpc/InternalChannelz$SocketStats;->security:Lio/grpc/InternalChannelz$Security;

    return-void
.end method
