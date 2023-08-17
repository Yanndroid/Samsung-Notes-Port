.class final Lorg/apache/poi/sun/awt/AppContext$CreateThreadAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/AppContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateThreadAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# instance fields
.field private final appContext:Lorg/apache/poi/sun/awt/AppContext;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sun/awt/AppContext;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sun/awt/AppContext$CreateThreadAction;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    iput-object p2, p0, Lorg/apache/poi/sun/awt/AppContext$CreateThreadAction;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/AppContext$CreateThreadAction;->run()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Thread;
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/apache/poi/sun/awt/AppContext$CreateThreadAction;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-virtual {v1}, Lorg/apache/poi/sun/awt/AppContext;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/sun/awt/AppContext$CreateThreadAction;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lorg/apache/poi/sun/awt/AppContext$CreateThreadAction;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-virtual {v1}, Lorg/apache/poi/sun/awt/AppContext;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
