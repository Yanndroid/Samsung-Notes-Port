.class final Lorg/apache/poi/sun/awt/AppContext$PostShutdownEventRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/AppContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostShutdownEventRunnable"
.end annotation


# instance fields
.field private final appContext:Lorg/apache/poi/sun/awt/AppContext;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sun/awt/AppContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sun/awt/AppContext$PostShutdownEventRunnable;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sun/awt/AppContext$PostShutdownEventRunnable;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    sget-object v1, Lorg/apache/poi/sun/awt/AppContext;->EVENT_QUEUE_KEY:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/EventQueue;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAutoShutdown;->getShutdownEvent()Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_0
    return-void
.end method
