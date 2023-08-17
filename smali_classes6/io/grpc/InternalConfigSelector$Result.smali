.class public final Lio/grpc/InternalConfigSelector$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalConfigSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/InternalConfigSelector$Result$Builder;
    }
.end annotation


# instance fields
.field private final config:Ljava/lang/Object;

.field public interceptor:Lio/grpc/ClientInterceptor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final status:Lio/grpc/Status;


# direct methods
.method private constructor <init>(Lio/grpc/Status;Ljava/lang/Object;Lio/grpc/ClientInterceptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Status;

    iput-object p1, p0, Lio/grpc/InternalConfigSelector$Result;->status:Lio/grpc/Status;

    iput-object p2, p0, Lio/grpc/InternalConfigSelector$Result;->config:Ljava/lang/Object;

    iput-object p3, p0, Lio/grpc/InternalConfigSelector$Result;->interceptor:Lio/grpc/ClientInterceptor;

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Status;Ljava/lang/Object;Lio/grpc/ClientInterceptor;Lio/grpc/InternalConfigSelector$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/InternalConfigSelector$Result;-><init>(Lio/grpc/Status;Ljava/lang/Object;Lio/grpc/ClientInterceptor;)V

    return-void
.end method

.method public static forError(Lio/grpc/Status;)Lio/grpc/InternalConfigSelector$Result;
    .locals 2

    invoke-virtual {p0}, Lio/grpc/Status;->isOk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "status is OK"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Lio/grpc/InternalConfigSelector$Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lio/grpc/InternalConfigSelector$Result;-><init>(Lio/grpc/Status;Ljava/lang/Object;Lio/grpc/ClientInterceptor;)V

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/InternalConfigSelector$Result$Builder;
    .locals 2

    new-instance v0, Lio/grpc/InternalConfigSelector$Result$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/InternalConfigSelector$Result$Builder;-><init>(Lio/grpc/InternalConfigSelector$1;)V

    return-object v0
.end method


# virtual methods
.method public getConfig()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/grpc/InternalConfigSelector$Result;->config:Ljava/lang/Object;

    return-object v0
.end method

.method public getInterceptor()Lio/grpc/ClientInterceptor;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/grpc/InternalConfigSelector$Result;->interceptor:Lio/grpc/ClientInterceptor;

    return-object v0
.end method

.method public getStatus()Lio/grpc/Status;
    .locals 1

    iget-object v0, p0, Lio/grpc/InternalConfigSelector$Result;->status:Lio/grpc/Status;

    return-object v0
.end method
