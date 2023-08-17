.class public Lio/netty/handler/timeout/IdleStateEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;
    }
.end annotation


# static fields
.field public static final ALL_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

.field public static final FIRST_ALL_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

.field public static final FIRST_READER_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

.field public static final FIRST_WRITER_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

.field public static final READER_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

.field public static final WRITER_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;


# instance fields
.field private final first:Z

.field private final state:Lio/netty/handler/timeout/IdleState;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;

    sget-object v1, Lio/netty/handler/timeout/IdleState;->READER_IDLE:Lio/netty/handler/timeout/IdleState;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;-><init>(Lio/netty/handler/timeout/IdleState;Z)V

    sput-object v0, Lio/netty/handler/timeout/IdleStateEvent;->FIRST_READER_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

    new-instance v0, Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;-><init>(Lio/netty/handler/timeout/IdleState;Z)V

    sput-object v0, Lio/netty/handler/timeout/IdleStateEvent;->READER_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

    new-instance v0, Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;

    sget-object v1, Lio/netty/handler/timeout/IdleState;->WRITER_IDLE:Lio/netty/handler/timeout/IdleState;

    invoke-direct {v0, v1, v2}, Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;-><init>(Lio/netty/handler/timeout/IdleState;Z)V

    sput-object v0, Lio/netty/handler/timeout/IdleStateEvent;->FIRST_WRITER_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

    new-instance v0, Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;

    invoke-direct {v0, v1, v3}, Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;-><init>(Lio/netty/handler/timeout/IdleState;Z)V

    sput-object v0, Lio/netty/handler/timeout/IdleStateEvent;->WRITER_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

    new-instance v0, Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;

    sget-object v1, Lio/netty/handler/timeout/IdleState;->ALL_IDLE:Lio/netty/handler/timeout/IdleState;

    invoke-direct {v0, v1, v2}, Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;-><init>(Lio/netty/handler/timeout/IdleState;Z)V

    sput-object v0, Lio/netty/handler/timeout/IdleStateEvent;->FIRST_ALL_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

    new-instance v0, Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;

    invoke-direct {v0, v1, v3}, Lio/netty/handler/timeout/IdleStateEvent$DefaultIdleStateEvent;-><init>(Lio/netty/handler/timeout/IdleState;Z)V

    sput-object v0, Lio/netty/handler/timeout/IdleStateEvent;->ALL_IDLE_STATE_EVENT:Lio/netty/handler/timeout/IdleStateEvent;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/timeout/IdleState;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "state"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/timeout/IdleState;

    iput-object p1, p0, Lio/netty/handler/timeout/IdleStateEvent;->state:Lio/netty/handler/timeout/IdleState;

    iput-boolean p2, p0, Lio/netty/handler/timeout/IdleStateEvent;->first:Z

    return-void
.end method


# virtual methods
.method public isFirst()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/timeout/IdleStateEvent;->first:Z

    return v0
.end method

.method public state()Lio/netty/handler/timeout/IdleState;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/timeout/IdleStateEvent;->state:Lio/netty/handler/timeout/IdleState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/timeout/IdleStateEvent;->state:Lio/netty/handler/timeout/IdleState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/netty/handler/timeout/IdleStateEvent;->first:Z

    if-eqz v1, :cond_0

    const-string v1, ", first"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
