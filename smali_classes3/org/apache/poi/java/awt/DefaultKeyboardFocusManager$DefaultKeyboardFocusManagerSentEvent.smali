.class Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$DefaultKeyboardFocusManagerSentEvent;
.super Lorg/apache/poi/java/awt/SentEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultKeyboardFocusManagerSentEvent"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2896c67f2b06663eL


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/AWTEvent;Lorg/apache/poi/sun/awt/AppContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/SentEvent;-><init>(Lorg/apache/poi/java/awt/AWTEvent;Lorg/apache/poi/sun/awt/AppContext;)V

    return-void
.end method


# virtual methods
.method public final dispatch()V
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->access$108(Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;)I

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    invoke-super {p0}, Lorg/apache/poi/java/awt/SentEvent;->dispatch()V

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_1
    invoke-static {v0}, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->access$110(Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;)I

    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_2
    :goto_2
    return-void
.end method
