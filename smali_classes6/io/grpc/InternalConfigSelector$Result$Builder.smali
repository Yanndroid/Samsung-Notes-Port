.class public final Lio/grpc/InternalConfigSelector$Result$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalConfigSelector$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private config:Ljava/lang/Object;

.field private interceptor:Lio/grpc/ClientInterceptor;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/InternalConfigSelector$1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/InternalConfigSelector$Result$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/InternalConfigSelector$Result;
    .locals 5

    iget-object v0, p0, Lio/grpc/InternalConfigSelector$Result$Builder;->config:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "config is not set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v0, Lio/grpc/InternalConfigSelector$Result;

    sget-object v1, Lio/grpc/Status;->OK:Lio/grpc/Status;

    iget-object v2, p0, Lio/grpc/InternalConfigSelector$Result$Builder;->config:Ljava/lang/Object;

    iget-object v3, p0, Lio/grpc/InternalConfigSelector$Result$Builder;->interceptor:Lio/grpc/ClientInterceptor;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/InternalConfigSelector$Result;-><init>(Lio/grpc/Status;Ljava/lang/Object;Lio/grpc/ClientInterceptor;Lio/grpc/InternalConfigSelector$1;)V

    return-object v0
.end method

.method public setConfig(Ljava/lang/Object;)Lio/grpc/InternalConfigSelector$Result$Builder;
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/InternalConfigSelector$Result$Builder;->config:Ljava/lang/Object;

    return-object p0
.end method

.method public setInterceptor(Lio/grpc/ClientInterceptor;)Lio/grpc/InternalConfigSelector$Result$Builder;
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ClientInterceptor;

    iput-object p1, p0, Lio/grpc/InternalConfigSelector$Result$Builder;->interceptor:Lio/grpc/ClientInterceptor;

    return-object p0
.end method
