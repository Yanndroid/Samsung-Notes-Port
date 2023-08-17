.class public Lio/grpc/ClientInterceptors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ClientInterceptors$CheckedForwardingClientCall;,
        Lio/grpc/ClientInterceptors$InterceptorChannel;
    }
.end annotation


# static fields
.field private static final NOOP_CALL:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/ClientInterceptors$2;

    invoke-direct {v0}, Lio/grpc/ClientInterceptors$2;-><init>()V

    sput-object v0, Lio/grpc/ClientInterceptors;->NOOP_CALL:Lio/grpc/ClientCall;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lio/grpc/ClientCall;
    .locals 1

    sget-object v0, Lio/grpc/ClientInterceptors;->NOOP_CALL:Lio/grpc/ClientCall;

    return-object v0
.end method

.method public static intercept(Lio/grpc/Channel;Ljava/util/List;)Lio/grpc/Channel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Channel;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ClientInterceptor;",
            ">;)",
            "Lio/grpc/Channel;"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ClientInterceptor;

    new-instance v1, Lio/grpc/ClientInterceptors$InterceptorChannel;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lio/grpc/ClientInterceptors$InterceptorChannel;-><init>(Lio/grpc/Channel;Lio/grpc/ClientInterceptor;Lio/grpc/ClientInterceptors$1;)V

    move-object p0, v1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static varargs intercept(Lio/grpc/Channel;[Lio/grpc/ClientInterceptor;)Lio/grpc/Channel;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lio/grpc/ClientInterceptors;->intercept(Lio/grpc/Channel;Ljava/util/List;)Lio/grpc/Channel;

    move-result-object p0

    return-object p0
.end method

.method public static interceptForward(Lio/grpc/Channel;Ljava/util/List;)Lio/grpc/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Channel;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ClientInterceptor;",
            ">;)",
            "Lio/grpc/Channel;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-static {p0, v0}, Lio/grpc/ClientInterceptors;->intercept(Lio/grpc/Channel;Ljava/util/List;)Lio/grpc/Channel;

    move-result-object p0

    return-object p0
.end method

.method public static varargs interceptForward(Lio/grpc/Channel;[Lio/grpc/ClientInterceptor;)Lio/grpc/Channel;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lio/grpc/ClientInterceptors;->interceptForward(Lio/grpc/Channel;Ljava/util/List;)Lio/grpc/Channel;

    move-result-object p0

    return-object p0
.end method

.method public static wrapClientInterceptor(Lio/grpc/ClientInterceptor;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/ClientInterceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<WReqT:",
            "Ljava/lang/Object;",
            "WRespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientInterceptor;",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TWReqT;>;",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TWRespT;>;)",
            "Lio/grpc/ClientInterceptor;"
        }
    .end annotation

    new-instance v0, Lio/grpc/ClientInterceptors$1;

    invoke-direct {v0, p1, p2, p0}, Lio/grpc/ClientInterceptors$1;-><init>(Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/ClientInterceptor;)V

    return-object v0
.end method
