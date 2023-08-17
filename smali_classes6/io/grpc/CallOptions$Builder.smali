.class Lio/grpc/CallOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/CallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public authority:Ljava/lang/String;

.field public compressorName:Ljava/lang/String;

.field public credentials:Lio/grpc/CallCredentials;

.field public customOptions:[[Ljava/lang/Object;

.field public deadline:Lio/grpc/Deadline;

.field public executor:Ljava/util/concurrent/Executor;

.field public maxInboundMessageSize:Ljava/lang/Integer;

.field public maxOutboundMessageSize:Ljava/lang/Integer;

.field public streamTracerFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ClientStreamTracer$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public waitForReady:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lio/grpc/CallOptions$Builder;)Lio/grpc/CallOptions;
    .locals 0

    invoke-direct {p0}, Lio/grpc/CallOptions$Builder;->build()Lio/grpc/CallOptions;

    move-result-object p0

    return-object p0
.end method

.method private build()Lio/grpc/CallOptions;
    .locals 2

    new-instance v0, Lio/grpc/CallOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/CallOptions;-><init>(Lio/grpc/CallOptions$Builder;Lio/grpc/CallOptions$1;)V

    return-object v0
.end method
