.class final Lio/netty/util/concurrent/DefaultPromise$LeanCancellationException;
.super Ljava/util/concurrent/CancellationException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/DefaultPromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeanCancellationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x26c8ae144c0240dfL


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/util/concurrent/DefaultPromise$1;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise$LeanCancellationException;-><init>()V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    invoke-static {}, Lio/netty/util/concurrent/DefaultPromise;->access$000()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CancellationException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-class v0, Ljava/util/concurrent/CancellationException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
