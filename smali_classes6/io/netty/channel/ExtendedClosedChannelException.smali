.class final Lio/netty/channel/ExtendedClosedChannelException;
.super Ljava/nio/channels/ClosedChannelException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/nio/channels/ClosedChannelException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method
