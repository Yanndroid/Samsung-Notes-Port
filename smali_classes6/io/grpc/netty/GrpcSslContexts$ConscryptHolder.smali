.class Lio/grpc/netty/GrpcSslContexts$ConscryptHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/GrpcSslContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConscryptHolder"
.end annotation


# static fields
.field public static final PROVIDER:Ljava/security/Provider;

.field public static final UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lio/grpc/internal/ConscryptLoader;->newProvider()Ljava/security/Provider;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_0
    sput-object v0, Lio/grpc/netty/GrpcSslContexts$ConscryptHolder;->PROVIDER:Ljava/security/Provider;

    sput-object v1, Lio/grpc/netty/GrpcSslContexts$ConscryptHolder;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
