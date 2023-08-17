.class final Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;
.super Lio/netty/handler/timeout/IdleStateEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/timeout/IdleStateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultIdleStateEvent"
.end annotation


# instance fields
.field private final representation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/netty/handler/timeout/IdleState;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lio/netty/handler/timeout/IdleStateEvent;-><init>(Lio/netty/handler/timeout/IdleState;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IdleStateEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p1, ", first"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;->representation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;->representation:Ljava/lang/String;

    return-object v0
.end method
