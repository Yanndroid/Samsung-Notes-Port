.class public final Lio/netty/handler/timeout/ReadTimeoutException;
.super Lio/netty/handler/timeout/TimeoutException;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/netty/handler/timeout/ReadTimeoutException;

.field private static final serialVersionUID:J = 0x2596e864dd0715dL


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    new-instance v0, Lio/netty/handler/timeout/ReadTimeoutException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/timeout/ReadTimeoutException;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/timeout/ReadTimeoutException;

    invoke-direct {v0}, Lio/netty/handler/timeout/ReadTimeoutException;-><init>()V

    :goto_0
    sput-object v0, Lio/netty/handler/timeout/ReadTimeoutException;->INSTANCE:Lio/netty/handler/timeout/ReadTimeoutException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/timeout/TimeoutException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/timeout/TimeoutException;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/timeout/TimeoutException;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
