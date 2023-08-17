.class public Lio/netty/handler/codec/http2/Http2Exception;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2Exception$StacklessHttp2Exception;,
        Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;,
        Lio/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;,
        Lio/netty/handler/codec/http2/Http2Exception$StreamException;,
        Lio/netty/handler/codec/http2/Http2Exception$ClosedStreamCreationException;,
        Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x60540c34872822f1L


# instance fields
.field private final error:Lio/netty/handler/codec/http2/Http2Error;

.field private final shutdownHint:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/handler/codec/http2/Http2Exception;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, "error"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2Error;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2Exception;->error:Lio/netty/handler/codec/http2/Http2Error;

    const-string p1, "shutdownHint"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p2, "error"

    invoke-static {p1, p2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2Error;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2Exception;->error:Lio/netty/handler/codec/http2/Http2Error;

    const-string p1, "shutdownHint"

    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    return-void
.end method

.method private constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Z)V
    .locals 2
    .annotation build Lio/netty/util/internal/SuppressJava6Requirement;
        reason = "uses Java 7+ Exception.<init>(String, Throwable, boolean, boolean) but is guarded by version checks"
    .end annotation

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p4, v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    const-string p2, "error"

    invoke-static {p1, p2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2Error;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2Exception;->error:Lio/netty/handler/codec/http2/Http2Error;

    const-string p1, "shutdownHint"

    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;ZLio/netty/handler/codec/http2/Http2Exception$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Z)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "error"

    invoke-static {p1, p2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2Error;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2Exception;->error:Lio/netty/handler/codec/http2/Http2Error;

    const-string p1, "shutdownHint"

    invoke-static {p4, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    return-void
.end method

.method public static varargs closedStreamError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception$ClosedStreamCreationException;

    invoke-static {p1, p2}, Lio/netty/handler/codec/http2/Http2Exception;->formatErrorMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http2/Http2Exception$ClosedStreamCreationException;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception;

    invoke-static {p1, p2}, Lio/netty/handler/codec/http2/Http2Exception;->formatErrorMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception;

    invoke-static {p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;->formatErrorMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static formatErrorMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    array-length p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "Unexpected error"

    return-object p0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs headerListSizeError(ILio/netty/handler/codec/http2/Http2Error;ZLjava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {p1, p3, p4}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;

    invoke-static {p3, p4}, Lio/netty/handler/codec/http2/Http2Exception;->formatErrorMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p0, p1, p3, p2}, Lio/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;-><init>(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Z)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static isStreamError(Lio/netty/handler/codec/http2/Http2Exception;)Z
    .locals 0

    instance-of p0, p0, Lio/netty/handler/codec/http2/Http2Exception$StreamException;

    return p0
.end method

.method public static newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/Http2Error;",
            "Ljava/lang/String;",
            "Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/handler/codec/http2/Http2Exception;"
        }
    .end annotation

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception$StacklessHttp2Exception;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lio/netty/handler/codec/http2/Http2Exception$StacklessHttp2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception$StacklessHttp2Exception;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/handler/codec/http2/Http2Exception$StacklessHttp2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    :goto_0
    invoke-static {v0, p3, p4}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http2/Http2Exception;

    return-object p0
.end method

.method public static varargs streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception$StreamException;

    invoke-static {p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;->formatErrorMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;-><init>(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static varargs streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception$StreamException;

    invoke-static {p3, p4}, Lio/netty/handler/codec/http2/Http2Exception;->formatErrorMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p0, p1, p3, p2}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;-><init>(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static streamId(Lio/netty/handler/codec/http2/Http2Exception;)I
    .locals 1

    invoke-static {p0}, Lio/netty/handler/codec/http2/Http2Exception;->isStreamError(Lio/netty/handler/codec/http2/Http2Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lio/netty/handler/codec/http2/Http2Exception$StreamException;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->streamId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public error()Lio/netty/handler/codec/http2/Http2Error;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2Exception;->error:Lio/netty/handler/codec/http2/Http2Error;

    return-object v0
.end method

.method public shutdownHint()Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    return-object v0
.end method
