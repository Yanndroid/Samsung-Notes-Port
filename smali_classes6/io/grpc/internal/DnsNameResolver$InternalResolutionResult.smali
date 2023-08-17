.class public final Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DnsNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalResolutionResult"
.end annotation


# instance fields
.field private addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation
.end field

.field public attributes:Lio/grpc/Attributes;

.field private config:Lio/grpc/NameResolver$ConfigOrError;

.field private error:Lio/grpc/Status;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/internal/DnsNameResolver$1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->addresses:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$102(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->addresses:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$200(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;)Lio/grpc/Status;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->error:Lio/grpc/Status;

    return-object p0
.end method

.method public static synthetic access$202(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;Lio/grpc/Status;)Lio/grpc/Status;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->error:Lio/grpc/Status;

    return-object p1
.end method

.method public static synthetic access$300(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;)Lio/grpc/NameResolver$ConfigOrError;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->config:Lio/grpc/NameResolver$ConfigOrError;

    return-object p0
.end method

.method public static synthetic access$302(Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;Lio/grpc/NameResolver$ConfigOrError;)Lio/grpc/NameResolver$ConfigOrError;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver$InternalResolutionResult;->config:Lio/grpc/NameResolver$ConfigOrError;

    return-object p1
.end method
