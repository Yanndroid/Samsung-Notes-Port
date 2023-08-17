.class final Lio/grpc/InternalChannelz$ServerSocketMap;
.super Ljava/util/concurrent/ConcurrentSkipListMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerSocketMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap<",
        "Ljava/lang/Long;",
        "Lio/grpc/InternalInstrumented<",
        "Lio/grpc/InternalChannelz$SocketStats;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6d68c8fa4573fba6L


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/InternalChannelz$1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/InternalChannelz$ServerSocketMap;-><init>()V

    return-void
.end method
