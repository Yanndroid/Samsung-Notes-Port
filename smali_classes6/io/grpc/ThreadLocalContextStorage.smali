.class final Lio/grpc/ThreadLocalContextStorage;
.super Lio/grpc/Context$Storage;
.source "SourceFile"


# static fields
.field public static final localContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/grpc/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/ThreadLocalContextStorage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/ThreadLocalContextStorage;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/grpc/ThreadLocalContextStorage;->localContext:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/Context$Storage;-><init>()V

    return-void
.end method


# virtual methods
.method public current()Lio/grpc/Context;
    .locals 1

    sget-object v0, Lio/grpc/ThreadLocalContextStorage;->localContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Context;

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    :cond_0
    return-object v0
.end method

.method public detach(Lio/grpc/Context;Lio/grpc/Context;)V
    .locals 3

    invoke-virtual {p0}, Lio/grpc/ThreadLocalContextStorage;->current()Lio/grpc/Context;

    move-result-object v0

    if-eq v0, p1, :cond_0

    sget-object p1, Lio/grpc/ThreadLocalContextStorage;->log:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "Context was not attached when detaching"

    invoke-virtual {p1, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    sget-object p1, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    if-eq p2, p1, :cond_1

    sget-object p1, Lio/grpc/ThreadLocalContextStorage;->localContext:Ljava/lang/ThreadLocal;

    goto :goto_0

    :cond_1
    sget-object p1, Lio/grpc/ThreadLocalContextStorage;->localContext:Ljava/lang/ThreadLocal;

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public doAttach(Lio/grpc/Context;)Lio/grpc/Context;
    .locals 2

    invoke-virtual {p0}, Lio/grpc/ThreadLocalContextStorage;->current()Lio/grpc/Context;

    move-result-object v0

    sget-object v1, Lio/grpc/ThreadLocalContextStorage;->localContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method
