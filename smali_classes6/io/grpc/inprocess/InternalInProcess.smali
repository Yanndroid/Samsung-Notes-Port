.class public final Lio/grpc/inprocess/InternalInProcess;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/Internal;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInProcessTransport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;Lio/grpc/internal/ObjectPool;Ljava/util/List;Lio/grpc/internal/ServerListener;Z)Lio/grpc/internal/ConnectionClientTransport;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/Attributes;",
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;",
            "Lio/grpc/internal/ServerListener;",
            "Z)",
            "Lio/grpc/internal/ConnectionClientTransport;"
        }
    .end annotation

    .annotation build Lio/grpc/Internal;
    .end annotation

    new-instance v10, Lio/grpc/inprocess/InProcessTransport;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lio/grpc/inprocess/InProcessTransport;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;Lio/grpc/internal/ObjectPool;Ljava/util/List;Lio/grpc/internal/ServerListener;Z)V

    return-object v10
.end method
