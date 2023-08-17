.class public abstract Lio/grpc/stub/AbstractStub;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/AbstractStub$StubFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lio/grpc/stub/AbstractStub<",
        "TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final callOptions:Lio/grpc/CallOptions;

.field private final channel:Lio/grpc/Channel;


# direct methods
.method public constructor <init>(Lio/grpc/Channel;)V
    .locals 1

    sget-object v0, Lio/grpc/CallOptions;->DEFAULT:Lio/grpc/CallOptions;

    invoke-direct {p0, p1, v0}, Lio/grpc/stub/AbstractStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "channel"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Channel;

    iput-object p1, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    const-string p1, "callOptions"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/CallOptions;

    iput-object p1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    return-void
.end method

.method public static newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/grpc/stub/AbstractStub<",
            "TT;>;>(",
            "Lio/grpc/stub/AbstractStub$StubFactory<",
            "TT;>;",
            "Lio/grpc/Channel;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lio/grpc/CallOptions;->DEFAULT:Lio/grpc/CallOptions;

    invoke-static {p0, p1, v0}, Lio/grpc/stub/AbstractStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    return-object p0
.end method

.method public static newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/grpc/stub/AbstractStub<",
            "TT;>;>(",
            "Lio/grpc/stub/AbstractStub$StubFactory<",
            "TT;>;",
            "Lio/grpc/Channel;",
            "Lio/grpc/CallOptions;",
            ")TT;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lio/grpc/stub/AbstractStub$StubFactory;->newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Channel;",
            "Lio/grpc/CallOptions;",
            ")TS;"
        }
    .end annotation
.end method

.method public final getCallOptions()Lio/grpc/CallOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    return-object v0
.end method

.method public final getChannel()Lio/grpc/Channel;
    .locals 1

    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    return-object v0
.end method

.method public final withCallCredentials(Lio/grpc/CallCredentials;)Lio/grpc/stub/AbstractStub;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/CallCredentials;",
            ")TS;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1}, Lio/grpc/CallOptions;->withCallCredentials(Lio/grpc/CallCredentials;)Lio/grpc/CallOptions;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    return-object p1
.end method

.method public final withChannel(Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Channel;",
            ")TS;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {p0, p1, v0}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    return-object p1
.end method

.method public final withCompression(Ljava/lang/String;)Lio/grpc/stub/AbstractStub;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .annotation build Lio/grpc/ExperimentalApi;
        value = "https://github.com/grpc/grpc-java/issues/1704"
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1}, Lio/grpc/CallOptions;->withCompression(Ljava/lang/String;)Lio/grpc/CallOptions;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    return-object p1
.end method

.method public final withDeadline(Lio/grpc/Deadline;)Lio/grpc/stub/AbstractStub;
    .locals 2
    .param p1    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Deadline;",
            ")TS;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1}, Lio/grpc/CallOptions;->withDeadline(Lio/grpc/Deadline;)Lio/grpc/CallOptions;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    return-object p1
.end method

.method public final withDeadlineAfter(JLjava/util/concurrent/TimeUnit;)Lio/grpc/stub/AbstractStub;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TS;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1, p2, p3}, Lio/grpc/CallOptions;->withDeadlineAfter(JLjava/util/concurrent/TimeUnit;)Lio/grpc/CallOptions;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    return-object p1
.end method

.method public final withExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/stub/AbstractStub;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TS;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1}, Lio/grpc/CallOptions;->withExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/CallOptions;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    return-object p1
.end method

.method public final varargs withInterceptors([Lio/grpc/ClientInterceptor;)Lio/grpc/stub/AbstractStub;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/grpc/ClientInterceptor;",
            ")TS;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    invoke-static {v0, p1}, Lio/grpc/ClientInterceptors;->intercept(Lio/grpc/Channel;[Lio/grpc/ClientInterceptor;)Lio/grpc/Channel;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {p0, p1, v0}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    return-object p1
.end method

.method public final withMaxInboundMessageSize(I)Lio/grpc/stub/AbstractStub;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .annotation build Lio/grpc/ExperimentalApi;
        value = "https://github.com/grpc/grpc-java/issues/2563"
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1}, Lio/grpc/CallOptions;->withMaxInboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    return-object p1
.end method

.method public final withMaxOutboundMessageSize(I)Lio/grpc/stub/AbstractStub;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .annotation build Lio/grpc/ExperimentalApi;
        value = "https://github.com/grpc/grpc-java/issues/2563"
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1}, Lio/grpc/CallOptions;->withMaxOutboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    return-object p1
.end method

.method public final withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/stub/AbstractStub;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/CallOptions$Key<",
            "TT;>;TT;)TS;"
        }
    .end annotation

    .annotation build Lio/grpc/ExperimentalApi;
        value = "https://github.com/grpc/grpc-java/issues/1869"
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1, p2}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object p1

    return-object p1
.end method

.method public final withWaitForReady()Lio/grpc/stub/AbstractStub;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1}, Lio/grpc/CallOptions;->withWaitForReady()Lio/grpc/CallOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method
