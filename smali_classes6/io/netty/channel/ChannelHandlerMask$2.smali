.class final Lio/netty/channel/ChannelHandlerMask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$handlerType:Ljava/lang/Class;

.field public final synthetic val$methodName:Ljava/lang/String;

.field public final synthetic val$paramTypes:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$handlerType:Ljava/lang/Class;

    iput-object p2, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$methodName:Ljava/lang/String;

    iput-object p3, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$paramTypes:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$handlerType:Ljava/lang/Class;

    iget-object v1, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$methodName:Ljava/lang/String;

    iget-object v2, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$paramTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const-class v1, Lio/netty/channel/ChannelHandlerMask$Skip;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/netty/channel/ChannelHandlerMask;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lio/netty/channel/ChannelHandlerMask;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$handlerType:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$methodName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "Class {} missing method {}, assume we can not skip execution"

    invoke-interface {v1, v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/ChannelHandlerMask$2;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
