.class Lio/grpc/internal/Http2Ping$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/Http2Ping;->asRunnable(Lio/grpc/internal/ClientTransport$PingCallback;J)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$callback:Lio/grpc/internal/ClientTransport$PingCallback;

.field public final synthetic val$roundTripTimeNanos:J


# direct methods
.method public constructor <init>(Lio/grpc/internal/ClientTransport$PingCallback;J)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/Http2Ping$1;->val$callback:Lio/grpc/internal/ClientTransport$PingCallback;

    iput-wide p2, p0, Lio/grpc/internal/Http2Ping$1;->val$roundTripTimeNanos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/Http2Ping$1;->val$callback:Lio/grpc/internal/ClientTransport$PingCallback;

    iget-wide v1, p0, Lio/grpc/internal/Http2Ping$1;->val$roundTripTimeNanos:J

    invoke-interface {v0, v1, v2}, Lio/grpc/internal/ClientTransport$PingCallback;->onSuccess(J)V

    return-void
.end method
