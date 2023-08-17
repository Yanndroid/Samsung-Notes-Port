.class public final Lio/grpc/inprocess/InProcessSocketAddress;
.super Ljava/net/SocketAddress;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x26e7d2ec83c15532L


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/inprocess/InProcessSocketAddress;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lio/grpc/inprocess/InProcessSocketAddress;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lio/grpc/inprocess/InProcessSocketAddress;->name:Ljava/lang/String;

    check-cast p1, Lio/grpc/inprocess/InProcessSocketAddress;

    iget-object p1, p1, Lio/grpc/inprocess/InProcessSocketAddress;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/inprocess/InProcessSocketAddress;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/grpc/inprocess/InProcessSocketAddress;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/inprocess/InProcessSocketAddress;->name:Ljava/lang/String;

    return-object v0
.end method
