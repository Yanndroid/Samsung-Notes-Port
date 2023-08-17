.class public final Lio/netty/handler/ssl/SslCloseCompletionEvent;
.super Lio/netty/handler/ssl/SslCompletionEvent;
.source "SourceFile"


# static fields
.field public static final SUCCESS:Lio/netty/handler/ssl/SslCloseCompletionEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/ssl/SslCloseCompletionEvent;

    invoke-direct {v0}, Lio/netty/handler/ssl/SslCloseCompletionEvent;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/SslCloseCompletionEvent;->SUCCESS:Lio/netty/handler/ssl/SslCloseCompletionEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/SslCompletionEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
