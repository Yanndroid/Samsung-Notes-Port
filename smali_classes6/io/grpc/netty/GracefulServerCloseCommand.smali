.class Lio/grpc/netty/GracefulServerCloseCommand;
.super Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;
.source "SourceFile"


# instance fields
.field private final goAwayDebugString:Ljava/lang/String;

.field private final graceTime:J

.field private final graceTimeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lio/grpc/netty/GracefulServerCloseCommand;-><init>(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    invoke-direct {p0}, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;-><init>()V

    const-string v0, "goAwayDebugString"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/netty/GracefulServerCloseCommand;->goAwayDebugString:Ljava/lang/String;

    iput-wide p2, p0, Lio/grpc/netty/GracefulServerCloseCommand;->graceTime:J

    iput-object p4, p0, Lio/grpc/netty/GracefulServerCloseCommand;->graceTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public getGoAwayDebugString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/GracefulServerCloseCommand;->goAwayDebugString:Ljava/lang/String;

    return-object v0
.end method

.method public getGraceTime()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/GracefulServerCloseCommand;->graceTime:J

    return-wide v0
.end method

.method public getGraceTimeUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/GracefulServerCloseCommand;->graceTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method
