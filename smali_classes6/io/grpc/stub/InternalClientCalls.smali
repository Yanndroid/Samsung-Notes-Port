.class public final Lio/grpc/stub/InternalClientCalls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/InternalClientCalls$StubType;
    }
.end annotation

.annotation build Lio/grpc/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStubType(Lio/grpc/CallOptions;)Lio/grpc/stub/InternalClientCalls$StubType;
    .locals 1

    sget-object v0, Lio/grpc/stub/ClientCalls;->STUB_TYPE_OPTION:Lio/grpc/CallOptions$Key;

    invoke-virtual {p0, v0}, Lio/grpc/CallOptions;->getOption(Lio/grpc/CallOptions$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/stub/ClientCalls$StubType;

    invoke-static {p0}, Lio/grpc/stub/InternalClientCalls$StubType;->of(Lio/grpc/stub/ClientCalls$StubType;)Lio/grpc/stub/InternalClientCalls$StubType;

    move-result-object p0

    return-object p0
.end method

.method public static getStubTypeOption()Lio/grpc/CallOptions$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/CallOptions$Key<",
            "Lio/grpc/stub/ClientCalls$StubType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/stub/ClientCalls;->STUB_TYPE_OPTION:Lio/grpc/CallOptions$Key;

    return-object v0
.end method

.method public static setStubType(Lio/grpc/CallOptions;Lio/grpc/stub/InternalClientCalls$StubType;)Lio/grpc/CallOptions;
    .locals 1

    sget-object v0, Lio/grpc/stub/ClientCalls;->STUB_TYPE_OPTION:Lio/grpc/CallOptions$Key;

    invoke-static {p1}, Lio/grpc/stub/InternalClientCalls$StubType;->access$000(Lio/grpc/stub/InternalClientCalls$StubType;)Lio/grpc/stub/ClientCalls$StubType;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object p0

    return-object p0
.end method
