.class Lio/netty/channel/nio/NioEventLoop$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/nio/NioEventLoop;->openSelector()Lio/netty/channel/nio/NioEventLoop$SelectorTuple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/channel/nio/NioEventLoop;

.field public final synthetic val$selectedKeySet:Lio/netty/channel/nio/SelectedSelectionKeySet;

.field public final synthetic val$selectorImplClass:Ljava/lang/Class;

.field public final synthetic val$unwrappedSelector:Ljava/nio/channels/Selector;


# direct methods
.method public constructor <init>(Lio/netty/channel/nio/NioEventLoop;Ljava/lang/Class;Ljava/nio/channels/Selector;Lio/netty/channel/nio/SelectedSelectionKeySet;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/nio/NioEventLoop$4;->this$0:Lio/netty/channel/nio/NioEventLoop;

    iput-object p2, p0, Lio/netty/channel/nio/NioEventLoop$4;->val$selectorImplClass:Ljava/lang/Class;

    iput-object p3, p0, Lio/netty/channel/nio/NioEventLoop$4;->val$unwrappedSelector:Ljava/nio/channels/Selector;

    iput-object p4, p0, Lio/netty/channel/nio/NioEventLoop$4;->val$selectedKeySet:Lio/netty/channel/nio/SelectedSelectionKeySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 10

    :try_start_0
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop$4;->val$selectorImplClass:Ljava/lang/Class;

    const-string v1, "selectedKeys"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/nio/NioEventLoop$4;->val$selectorImplClass:Ljava/lang/Class;

    const-string v2, "publicSelectedKeys"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v2, v7

    if-eqz v9, :cond_0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop$4;->val$unwrappedSelector:Ljava/nio/channels/Selector;

    iget-object v1, p0, Lio/netty/channel/nio/NioEventLoop$4;->val$selectedKeySet:Lio/netty/channel/nio/SelectedSelectionKeySet;

    invoke-static {v0, v2, v3, v1}, Lio/netty/util/internal/PlatformDependent;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop$4;->val$unwrappedSelector:Ljava/nio/channels/Selector;

    iget-object v1, p0, Lio/netty/channel/nio/NioEventLoop$4;->val$selectedKeySet:Lio/netty/channel/nio/SelectedSelectionKeySet;

    invoke-static {v0, v5, v6, v1}, Lio/netty/util/internal/PlatformDependent;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v4

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lio/netty/util/internal/ReflectionUtil;->trySetAccessible(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    invoke-static {v1, v2}, Lio/netty/util/internal/ReflectionUtil;->trySetAccessible(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    iget-object v2, p0, Lio/netty/channel/nio/NioEventLoop$4;->val$unwrappedSelector:Ljava/nio/channels/Selector;

    iget-object v3, p0, Lio/netty/channel/nio/NioEventLoop$4;->val$selectedKeySet:Lio/netty/channel/nio/SelectedSelectionKeySet;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop$4;->val$unwrappedSelector:Ljava/nio/channels/Selector;

    iget-object v2, p0, Lio/netty/channel/nio/NioEventLoop$4;->val$selectedKeySet:Lio/netty/channel/nio/SelectedSelectionKeySet;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    return-object v0

    :catch_1
    move-exception v0

    return-object v0
.end method
