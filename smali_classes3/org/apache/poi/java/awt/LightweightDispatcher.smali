.class Lorg/apache/poi/java/awt/LightweightDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/poi/java/awt/event/AWTEventListener;


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final LWD_MOUSE_DRAGGED_OVER:I = 0x5dc

.field private static final MOUSE_MASK:J = 0x20030L

.field private static final PROXY_EVENT_MASK:J = 0x2003cL

.field private static final eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static final serialVersionUID:J = 0x47f24dab87dad089L


# instance fields
.field private eventMask:J

.field private focus:Lorg/apache/poi/java/awt/Component;

.field private transient isMouseInNativeContainer:Z

.field private transient mouseEventTarget:Lorg/apache/poi/java/awt/Component;

.field private nativeContainer:Lorg/apache/poi/java/awt/Container;

.field private nativeCursor:Lorg/apache/poi/java/awt/Cursor;

.field private transient targetLastEntered:Lorg/apache/poi/java/awt/Component;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/java/awt/LightweightDispatcher;

    const-string v0, "org.apache.poi.java.awt.event.LightweightDispatcher"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/LightweightDispatcher;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Container;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->isMouseInNativeContainer:Z

    iput-object p1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->mouseEventTarget:Lorg/apache/poi/java/awt/Component;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->eventMask:J

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/java/awt/LightweightDispatcher;)Lorg/apache/poi/java/awt/Container;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/java/awt/LightweightDispatcher;Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/MouseEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/LightweightDispatcher;->trackMouseEnterExit(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/MouseEvent;)V

    return-void
.end method

.method private isMouseGrab(Lorg/apache/poi/java/awt/event/MouseEvent;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseEvent;->getModifiersEx()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseEvent;->getID()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x1f5

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseEvent;->getID()I

    move-result v1

    const/16 v3, 0x1f6

    if-ne v1, v3, :cond_4

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseEvent;->getButton()I

    move-result p1

    if-eq p1, v2, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    xor-int/lit16 v0, v0, 0x1000

    goto :goto_0

    :cond_2
    xor-int/lit16 v0, v0, 0x800

    goto :goto_0

    :cond_3
    xor-int/lit16 v0, v0, 0x400

    :cond_4
    :goto_0
    and-int/lit16 p1, v0, 0x1c00

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private processDropTargetEvent(Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;)Z
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;->getID()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;->getX()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;->getY()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/java/awt/Component;->contains(II)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v3

    iget v6, v3, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-gt v6, v1, :cond_0

    add-int/lit8 v1, v6, -0x1

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    move v1, v4

    :cond_1
    :goto_0
    iget v3, v3, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-gt v3, v2, :cond_2

    add-int/lit8 v2, v3, -0x1

    goto :goto_1

    :cond_2
    if-gez v2, :cond_3

    move v2, v4

    :cond_3
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v3, v1, v2, v5}, Lorg/apache/poi/java/awt/Container;->getDropTargetEventTarget(IIZ)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/apache/poi/java/awt/LightweightDispatcher;->trackMouseEnterExit(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/MouseEvent;)V

    iget-object v2, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    if-eq v1, v2, :cond_4

    if-eqz v1, :cond_4

    const/16 v2, 0x1f8

    if-eq v0, v2, :cond_4

    const/16 v2, 0x1f9

    if-eq v0, v2, :cond_4

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/LightweightDispatcher;->retargetMouseEvent(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/event/MouseEvent;)V

    invoke-virtual {p1}, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;->consume()V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;->isConsumed()Z

    move-result p1

    return p1
.end method

.method private processMouseEvent(Lorg/apache/poi/java/awt/event/MouseEvent;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseEvent;->getID()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseEvent;->getX()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseEvent;->getY()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/poi/java/awt/Container;->getMouseEventTarget(IIZ)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/apache/poi/java/awt/LightweightDispatcher;->trackMouseEnterExit(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/MouseEvent;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/LightweightDispatcher;->isMouseGrab(Lorg/apache/poi/java/awt/event/MouseEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x1f4

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    if-eq v1, v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->mouseEventTarget:Lorg/apache/poi/java/awt/Component;

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->mouseEventTarget:Lorg/apache/poi/java/awt/Component;

    if-eqz v2, :cond_4

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    sget-object v2, Lorg/apache/poi/java/awt/LightweightDispatcher;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retargeting mouse wheel to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/LightweightDispatcher;->isMouseGrab(Lorg/apache/poi/java/awt/event/MouseEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->mouseEventTarget:Lorg/apache/poi/java/awt/Component;

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v2, v0, p1}, Lorg/apache/poi/java/awt/LightweightDispatcher;->retargetMouseEvent(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/event/MouseEvent;)V

    goto :goto_2

    :pswitch_4
    if-ne v1, v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/LightweightDispatcher;->retargetMouseEvent(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/event/MouseEvent;)V

    :cond_3
    :goto_2
    const/16 v1, 0x1fb

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseEvent;->consume()V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseEvent;->isConsumed()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private startListeningForOtherDrags()V
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/LightweightDispatcher$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/LightweightDispatcher$1;-><init>(Lorg/apache/poi/java/awt/LightweightDispatcher;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private stopListeningForOtherDrags()V
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/LightweightDispatcher$2;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/LightweightDispatcher$2;-><init>(Lorg/apache/poi/java/awt/LightweightDispatcher;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private trackMouseEnterExit(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/MouseEvent;)V
    .locals 6

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/event/MouseEvent;->getID()I

    move-result v0

    instance-of v1, p2, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x1f8

    const/16 v5, 0x1f9

    if-eqz v1, :cond_0

    if-ne v0, v4, :cond_0

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->isMouseInNativeContainer:Z

    if-ne v1, v2, :cond_0

    iput-object v3, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->targetLastEntered:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_0
    if-eq v0, v5, :cond_1

    const/16 v1, 0x1fa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5dc

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->isMouseInNativeContainer:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->isMouseInNativeContainer:Z

    invoke-direct {p0}, Lorg/apache/poi/java/awt/LightweightDispatcher;->startListeningForOtherDrags()V

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->isMouseInNativeContainer:Z

    invoke-direct {p0}, Lorg/apache/poi/java/awt/LightweightDispatcher;->stopListeningForOtherDrags()V

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->isMouseInNativeContainer:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v3

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->targetLastEntered:Lorg/apache/poi/java/awt/Component;

    if-ne v1, p1, :cond_4

    return-void

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, v1, v5, p2}, Lorg/apache/poi/java/awt/LightweightDispatcher;->retargetMouseEvent(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/event/MouseEvent;)V

    :cond_5
    if-ne v0, v5, :cond_6

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/event/MouseEvent;->consume()V

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p0, p1, v4, p2}, Lorg/apache/poi/java/awt/LightweightDispatcher;->retargetMouseEvent(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/event/MouseEvent;)V

    :cond_7
    if-ne v0, v4, :cond_8

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/event/MouseEvent;->consume()V

    :cond_8
    iput-object p1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->targetLastEntered:Lorg/apache/poi/java/awt/Component;

    return-void
.end method


# virtual methods
.method public dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/LightweightDispatcher;->processDropTargetEvent(Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;)Z

    move-result p1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/java/awt/event/MouseEvent;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->eventMask:J

    const-wide/32 v2, 0x20030

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseEvent;

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/LightweightDispatcher;->processMouseEvent(Lorg/apache/poi/java/awt/event/MouseEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result p1

    const/16 v1, 0x1f7

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->updateCursorImmediately()V

    :cond_2
    move p1, v0

    :goto_1
    return p1
.end method

.method public dispose()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/LightweightDispatcher;->stopListeningForOtherDrags()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->mouseEventTarget:Lorg/apache/poi/java/awt/Component;

    return-void
.end method

.method public enableEvents(J)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->eventMask:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher;->eventMask:J

    return-void
.end method

.method public eventDispatched(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/apache/poi/java/awt/event/MouseEvent;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    instance-of v2, v0, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;

    if-nez v2, :cond_0

    iget v2, v0, Lorg/apache/poi/java/awt/AWTEvent;->id:I

    const/16 v4, 0x1fa

    if-ne v2, v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    if-eq v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    check-cast v0, Lorg/apache/poi/java/awt/event/MouseEvent;

    iget-object v2, v1, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/MouseEvent;->getComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    monitor-exit v2

    return-void

    :cond_2
    iget-object v5, v1, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    :goto_1
    if-eqz v5, :cond_3

    instance-of v6, v5, Lorg/apache/poi/java/awt/Window;

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Component;->getParent_NoClientCode()Lorg/apache/poi/java/awt/Container;

    move-result-object v5

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_7

    check-cast v5, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Window;->isModalBlocked()Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_2

    :cond_4
    new-instance v5, Lorg/apache/poi/java/awt/event/MouseEvent;

    iget-object v7, v1, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    const/16 v8, 0x5dc

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/MouseEvent;->getWhen()J

    move-result-wide v9

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/MouseEvent;->getModifiersEx()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/MouseEvent;->getModifiers()I

    move-result v11

    or-int/2addr v11, v6

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/MouseEvent;->getX()I

    move-result v12

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/MouseEvent;->getY()I

    move-result v13

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/MouseEvent;->getXOnScreen()I

    move-result v14

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/MouseEvent;->getYOnScreen()I

    move-result v15

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/MouseEvent;->getClickCount()I

    move-result v16

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/MouseEvent;->isPopupTrigger()Z

    move-result v17

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/MouseEvent;->getButton()I

    move-result v18

    move-object v6, v5

    invoke-direct/range {v6 .. v18}, Lorg/apache/poi/java/awt/event/MouseEvent;-><init>(Lorg/apache/poi/java/awt/Component;IJIIIIIIZI)V

    invoke-virtual {v0, v5}, Lorg/apache/poi/java/awt/AWTEvent;->copyPrivateDataInto(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->getLocationOnScreen()Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v4

    iget-object v6, v1, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    iget-object v7, v6, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    if-eq v4, v7, :cond_5

    new-instance v3, Lorg/apache/poi/java/awt/LightweightDispatcher$3;

    invoke-direct {v3, v1, v5, v0}, Lorg/apache/poi/java/awt/LightweightDispatcher$3;-><init>(Lorg/apache/poi/java/awt/LightweightDispatcher;Lorg/apache/poi/java/awt/event/MouseEvent;Lorg/apache/poi/java/awt/Point;)V

    iget-object v0, v1, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    invoke-static {v0, v3}, Lorg/apache/poi/sun/awt/SunToolkit;->executeOnEventHandlerThread(Ljava/lang/Object;Ljava/lang/Runnable;)V

    monitor-exit v2

    return-void

    :cond_5
    invoke-virtual {v6}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v4

    if-nez v4, :cond_6

    monitor-exit v2

    return-void

    :cond_6
    iget-object v4, v1, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->getLocationOnScreen()Lorg/apache/poi/java/awt/Point;

    move-result-object v4

    iget v6, v0, Lorg/apache/poi/java/awt/Point;->x:I

    iget v7, v4, Lorg/apache/poi/java/awt/Point;->x:I

    sub-int/2addr v6, v7

    iget v0, v0, Lorg/apache/poi/java/awt/Point;->y:I

    iget v4, v4, Lorg/apache/poi/java/awt/Point;->y:I

    sub-int/2addr v0, v4

    invoke-virtual {v5, v6, v0}, Lorg/apache/poi/java/awt/event/MouseEvent;->translatePoint(II)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/event/MouseEvent;->getX()I

    move-result v2

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/event/MouseEvent;->getY()I

    move-result v4

    invoke-virtual {v0, v2, v4, v3}, Lorg/apache/poi/java/awt/Container;->getMouseEventTarget(IIZ)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lorg/apache/poi/java/awt/LightweightDispatcher;->trackMouseEnterExit(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/MouseEvent;)V

    return-void

    :cond_7
    :goto_2
    :try_start_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public retargetMouseEvent(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/event/MouseEvent;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v7, p2

    move-object/from16 v15, p3

    if-nez v8, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getX()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getY()I

    move-result v2

    move/from16 v18, v1

    move/from16 v19, v2

    move-object v1, v8

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v0, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    if-eq v1, v2, :cond_1

    iget v2, v1, Lorg/apache/poi/java/awt/Component;->x:I

    sub-int v18, v18, v2

    iget v2, v1, Lorg/apache/poi/java/awt/Component;->y:I

    sub-int v19, v19, v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_7

    instance-of v1, v15, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;

    const/16 v14, 0x1fb

    if-eqz v1, :cond_2

    new-instance v9, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;

    move-object v1, v15

    check-cast v1, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;

    invoke-virtual {v1}, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;->getDispatcher()Lorg/apache/poi/sun/awt/dnd/SunDropTargetContextPeer$EventDispatcher;

    move-result-object v6

    move-object v1, v9

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v18

    move/from16 v5, v19

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;-><init>(Lorg/apache/poi/java/awt/Component;IIILorg/apache/poi/sun/awt/dnd/SunDropTargetContextPeer$EventDispatcher;)V

    move-object v0, v15

    goto/16 :goto_1

    :cond_2
    if-ne v7, v14, :cond_3

    new-instance v20, Lorg/apache/poi/java/awt/event/MouseWheelEvent;

    move-object/from16 v1, v20

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getWhen()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getModifiersEx()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getModifiers()I

    move-result v3

    or-int v6, v2, v3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getXOnScreen()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getYOnScreen()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getClickCount()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->isPopupTrigger()Z

    move-result v12

    move-object v2, v15

    check-cast v2, Lorg/apache/poi/java/awt/event/MouseWheelEvent;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getScrollType()I

    move-result v13

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getScrollAmount()I

    move-result v3

    move v14, v3

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getWheelRotation()I

    move-result v3

    move-object v0, v15

    move v15, v3

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getPreciseWheelRotation()D

    move-result-wide v16

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-direct/range {v1 .. v17}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;-><init>(Lorg/apache/poi/java/awt/Component;IJIIIIIIZIIID)V

    move-object/from16 v9, v20

    goto :goto_1

    :cond_3
    move-object v0, v15

    new-instance v14, Lorg/apache/poi/java/awt/event/MouseEvent;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getWhen()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getModifiersEx()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getModifiers()I

    move-result v2

    or-int v6, v1, v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getXOnScreen()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getYOnScreen()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getClickCount()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->isPopupTrigger()Z

    move-result v12

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->getButton()I

    move-result v13

    move-object v1, v14

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-direct/range {v1 .. v13}, Lorg/apache/poi/java/awt/event/MouseEvent;-><init>(Lorg/apache/poi/java/awt/Component;IJIIIIIIZI)V

    move-object v9, v14

    :goto_1
    invoke-virtual {v0, v9}, Lorg/apache/poi/java/awt/AWTEvent;->copyPrivateDataInto(Lorg/apache/poi/java/awt/AWTEvent;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/java/awt/LightweightDispatcher;->nativeContainer:Lorg/apache/poi/java/awt/Container;

    move-object/from16 v2, p1

    if-ne v2, v1, :cond_4

    move-object v1, v2

    check-cast v1, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v1, v9}, Lorg/apache/poi/java/awt/Container;->dispatchEventToSelf(Lorg/apache/poi/java/awt/AWTEvent;)V

    :goto_2
    move/from16 v1, p2

    const/16 v2, 0x1fb

    goto :goto_4

    :cond_4
    iget-object v1, v1, Lorg/apache/poi/java/awt/Container;->modalComp:Lorg/apache/poi/java/awt/Component;

    if-eqz v1, :cond_6

    check-cast v1, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/Container;->isAncestorOf(Lorg/apache/poi/java/awt/Component;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->consume()V

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {v2, v9}, Lorg/apache/poi/java/awt/Component;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    goto :goto_2

    :goto_4
    if-ne v1, v2, :cond_7

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/event/MouseEvent;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/event/MouseEvent;->consume()V

    :cond_7
    return-void
.end method
