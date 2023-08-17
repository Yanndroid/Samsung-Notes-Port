.class public abstract Lorg/apache/poi/java/awt/AWTEvent;
.super Ljava/util/EventObject;
.source "SourceFile"


# static fields
.field public static final ACTION_EVENT_MASK:J = 0x80L

.field public static final ADJUSTMENT_EVENT_MASK:J = 0x100L

.field public static final COMPONENT_EVENT_MASK:J = 0x1L

.field public static final CONTAINER_EVENT_MASK:J = 0x2L

.field public static final FOCUS_EVENT_MASK:J = 0x4L

.field public static final HIERARCHY_BOUNDS_EVENT_MASK:J = 0x10000L

.field public static final HIERARCHY_EVENT_MASK:J = 0x8000L

.field public static final INPUT_METHODS_ENABLED_MASK:J = 0x1000L

.field public static final INPUT_METHOD_EVENT_MASK:J = 0x800L

.field public static final INVOCATION_EVENT_MASK:J = 0x4000L

.field public static final ITEM_EVENT_MASK:J = 0x200L

.field public static final KEY_EVENT_MASK:J = 0x8L

.field public static final MOUSE_EVENT_MASK:J = 0x10L

.field public static final MOUSE_MOTION_EVENT_MASK:J = 0x20L

.field public static final MOUSE_WHEEL_EVENT_MASK:J = 0x20000L

.field public static final PAINT_EVENT_MASK:J = 0x2000L

.field public static final RESERVED_ID_MAX:I = 0x7cf

.field public static final TEXT_EVENT_MASK:J = 0x400L

.field public static final WINDOW_EVENT_MASK:J = 0x40L

.field public static final WINDOW_FOCUS_EVENT_MASK:J = 0x80000L

.field public static final WINDOW_STATE_EVENT_MASK:J = 0x40000L

.field private static inputEvent_CanAccessSystemClipboard_Field:Ljava/lang/reflect/Field; = null

.field private static final log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static final serialVersionUID:J = -0x1954d21ee720753dL


# instance fields
.field private volatile transient acc:Ljava/security/AccessControlContext;

.field private bdata:[B

.field public consumed:Z

.field public transient focusManagerIsDispatching:Z

.field public id:I

.field public transient isPosted:Z

.field private transient isSystemGenerated:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.apache.poi.java.awt.AWTEvent"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/AWTEvent;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/java/awt/AWTEvent;->inputEvent_CanAccessSystemClipboard_Field:Ljava/lang/reflect/Field;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/AWTEvent;->initIDs()V

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/AWTEvent$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/AWTEvent$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setAWTEventAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/AWTEvent;->consumed:Z

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/AWTEvent;->acc:Ljava/security/AccessControlContext;

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/AWTEvent;->focusManagerIsDispatching:Z

    iput p2, p0, Lorg/apache/poi/java/awt/AWTEvent;->id:I

    const/16 p1, 0x259

    if-eq p2, p1, :cond_0

    const/16 p1, 0x2bd

    if-eq p2, p1, :cond_0

    const/16 p1, 0x384

    if-eq p2, p1, :cond_0

    const/16 p1, 0x3e9

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/AWTEvent;->consumed:Z

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Event;)V
    .locals 1

    iget-object v0, p1, Lorg/apache/poi/java/awt/Event;->target:Ljava/lang/Object;

    iget p1, p1, Lorg/apache/poi/java/awt/Event;->id:I

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/java/awt/AWTEvent;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/java/awt/AWTEvent;->isSystemGenerated:Z

    return p0
.end method

.method public static synthetic access$002(Lorg/apache/poi/java/awt/AWTEvent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/AWTEvent;->isSystemGenerated:Z

    return p1
.end method

.method public static synthetic access$100(Lorg/apache/poi/java/awt/AWTEvent;)[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/AWTEvent;->bdata:[B

    return-object p0
.end method

.method public static synthetic access$102(Lorg/apache/poi/java/awt/AWTEvent;[B)[B
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/AWTEvent;->bdata:[B

    return-object p1
.end method

.method public static synthetic access$200()Lorg/apache/poi/sun/util/logging/PlatformLogger;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/AWTEvent;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    return-object v0
.end method

.method private static declared-synchronized get_InputEvent_CanAccessSystemClipboard()Ljava/lang/reflect/Field;
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/AWTEvent;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/AWTEvent;->inputEvent_CanAccessSystemClipboard_Field:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/java/awt/AWTEvent$2;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/AWTEvent$2;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    sput-object v1, Lorg/apache/poi/java/awt/AWTEvent;->inputEvent_CanAccessSystemClipboard_Field:Ljava/lang/reflect/Field;

    :cond_0
    sget-object v1, Lorg/apache/poi/java/awt/AWTEvent;->inputEvent_CanAccessSystemClipboard_Field:Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native initIDs()V
.end method

.method private native nativeSetSource(Lorg/apache/poi/java/awt/peer/ComponentPeer;)V
.end method


# virtual methods
.method public consume()V
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/AWTEvent;->id:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_0

    const/16 v1, 0x192

    if-eq v0, v1, :cond_0

    const/16 v1, 0x44c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x44d

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/AWTEvent;->consumed:Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public convertToOld()Lorg/apache/poi/java/awt/Event;
    .locals 12

    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v1

    iget v4, p0, Lorg/apache/poi/java/awt/AWTEvent;->id:I

    const/16 v0, 0x64

    const/4 v2, 0x0

    if-eq v4, v0, :cond_17

    const/16 v0, 0xc9

    if-eq v4, v0, :cond_16

    const/16 v0, 0x259

    const/4 v3, 0x1

    if-eq v4, v0, :cond_f

    const/16 v0, 0x3e9

    const/16 v5, 0x2bd

    if-eq v4, v5, :cond_a

    if-eq v4, v0, :cond_7

    const/16 v0, 0xcb

    if-eq v4, v0, :cond_16

    const/16 v0, 0xcc

    if-eq v4, v0, :cond_16

    const/16 v0, 0x191

    if-eq v4, v0, :cond_2

    const/16 v3, 0x192

    if-eq v4, v3, :cond_2

    const/16 v0, 0x3ec

    if-eq v4, v0, :cond_1

    const/16 v0, 0x3ed

    if-eq v4, v0, :cond_0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    move-object v9, p0

    check-cast v9, Lorg/apache/poi/java/awt/event/MouseEvent;

    new-instance v10, Lorg/apache/poi/java/awt/Event;

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/event/MouseEvent;->getWhen()J

    move-result-wide v2

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/event/MouseEvent;->getX()I

    move-result v5

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/event/MouseEvent;->getY()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/event/MouseEvent;->getModifiers()I

    move-result v0

    and-int/lit8 v8, v0, -0x11

    move-object v0, v10

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/Event;-><init>(Ljava/lang/Object;JIIIII)V

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/event/MouseEvent;->getClickCount()I

    move-result v0

    iput v0, v10, Lorg/apache/poi/java/awt/Event;->clickCount:I

    return-object v10

    :cond_0
    new-instance v3, Lorg/apache/poi/java/awt/Event;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/java/awt/Event;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v3

    :cond_1
    new-instance v3, Lorg/apache/poi/java/awt/Event;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/java/awt/Event;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v3

    :cond_2
    move-object v3, p0

    check-cast v3, Lorg/apache/poi/java/awt/event/KeyEvent;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/event/KeyEvent;->isActionKey()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v4, p0, Lorg/apache/poi/java/awt/AWTEvent;->id:I

    if-ne v4, v0, :cond_3

    const/16 v0, 0x193

    goto :goto_0

    :cond_3
    const/16 v0, 0x194

    :goto_0
    move v4, v0

    :cond_4
    invoke-virtual {v3}, Lorg/apache/poi/java/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v5, 0x10

    if-eq v0, v5, :cond_6

    const/16 v5, 0x11

    if-eq v0, v5, :cond_6

    const/16 v5, 0x12

    if-ne v0, v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance v9, Lorg/apache/poi/java/awt/Event;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/event/KeyEvent;->getWhen()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3}, Lorg/apache/poi/java/awt/Event;->getOldEventKey(Lorg/apache/poi/java/awt/event/KeyEvent;)I

    move-result v10

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/event/KeyEvent;->getModifiers()I

    move-result v0

    and-int/lit8 v11, v0, -0x11

    move-object v0, v9

    move-wide v2, v5

    move v5, v7

    move v6, v8

    move v7, v10

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/Event;-><init>(Ljava/lang/Object;JIIIII)V

    return-object v9

    :cond_6
    :goto_1
    return-object v2

    :cond_7
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/java/awt/event/ActionEvent;

    instance-of v2, v1, Lorg/apache/poi/java/awt/Button;

    if-eqz v2, :cond_8

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/java/awt/Button;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Button;->getLabel()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v9, v2

    goto :goto_3

    :cond_8
    instance-of v2, v1, Lorg/apache/poi/java/awt/MenuItem;

    if-eqz v2, :cond_9

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/java/awt/MenuItem;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/MenuItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :goto_3
    new-instance v10, Lorg/apache/poi/java/awt/Event;

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/event/ActionEvent;->getModifiers()I

    move-result v8

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/poi/java/awt/Event;-><init>(Ljava/lang/Object;JIIIIILjava/lang/Object;)V

    return-object v10

    :cond_a
    move-object v2, p0

    check-cast v2, Lorg/apache/poi/java/awt/event/ItemEvent;

    instance-of v4, v1, Lorg/apache/poi/java/awt/List;

    if-eqz v4, :cond_c

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/event/ItemEvent;->getStateChange()I

    move-result v0

    if-ne v0, v3, :cond_b

    move v0, v5

    goto :goto_4

    :cond_b
    const/16 v0, 0x2be

    goto :goto_4

    :cond_c
    instance-of v4, v1, Lorg/apache/poi/java/awt/Choice;

    if-eqz v4, :cond_d

    :goto_4
    invoke-virtual {v2}, Lorg/apache/poi/java/awt/event/ItemEvent;->getItem()Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    :cond_d
    invoke-virtual {v2}, Lorg/apache/poi/java/awt/event/ItemEvent;->getStateChange()I

    move-result v2

    if-ne v2, v3, :cond_e

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_6
    new-instance v3, Lorg/apache/poi/java/awt/Event;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/java/awt/Event;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v3

    :cond_f
    move-object v4, p0

    check-cast v4, Lorg/apache/poi/java/awt/event/AdjustmentEvent;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/event/AdjustmentEvent;->getAdjustmentType()I

    move-result v5

    if-eq v5, v3, :cond_14

    const/4 v3, 0x2

    if-eq v5, v3, :cond_15

    const/4 v0, 0x3

    if-eq v5, v0, :cond_13

    const/4 v0, 0x4

    if-eq v5, v0, :cond_12

    const/4 v0, 0x5

    if-eq v5, v0, :cond_10

    return-object v2

    :cond_10
    invoke-virtual {v4}, Lorg/apache/poi/java/awt/event/AdjustmentEvent;->getValueIsAdjusting()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x25d

    goto :goto_7

    :cond_11
    const/16 v0, 0x25f

    goto :goto_7

    :cond_12
    const/16 v0, 0x25c

    goto :goto_7

    :cond_13
    const/16 v0, 0x25b

    goto :goto_7

    :cond_14
    const/16 v0, 0x25a

    :cond_15
    :goto_7
    new-instance v2, Lorg/apache/poi/java/awt/Event;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/event/AdjustmentEvent;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/poi/java/awt/Event;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v2

    :cond_16
    new-instance v0, Lorg/apache/poi/java/awt/Event;

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/poi/java/awt/Event;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v0

    :cond_17
    instance-of v0, v1, Lorg/apache/poi/java/awt/Frame;

    if-nez v0, :cond_19

    instance-of v0, v1, Lorg/apache/poi/java/awt/Dialog;

    if-eqz v0, :cond_18

    goto :goto_9

    :cond_18
    :goto_8
    return-object v2

    :cond_19
    :goto_9
    move-object v0, v1

    check-cast v0, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getLocation()Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    new-instance v9, Lorg/apache/poi/java/awt/Event;

    const-wide/16 v2, 0x0

    const/16 v4, 0xcd

    iget v5, v0, Lorg/apache/poi/java/awt/Point;->x:I

    iget v6, v0, Lorg/apache/poi/java/awt/Point;->y:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/Event;-><init>(Ljava/lang/Object;JIIIII)V

    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public copyPrivateDataInto(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEvent;->bdata:[B

    iput-object v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->bdata:[B

    instance-of v0, p0, Lorg/apache/poi/java/awt/event/InputEvent;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/apache/poi/java/awt/event/InputEvent;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/AWTEvent;->get_InputEvent_CanAccessSystemClipboard()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/poi/java/awt/AWTEvent;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AWTEvent.copyPrivateDataInto() got IllegalAccessException "

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/AWTEvent;->isSystemGenerated:Z

    iput-boolean v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->isSystemGenerated:Z

    return-void
.end method

.method public dispatched()V
    .locals 3

    instance-of v0, p0, Lorg/apache/poi/java/awt/event/InputEvent;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/AWTEvent;->get_InputEvent_CanAccessSystemClipboard()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/poi/java/awt/AWTEvent;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/poi/java/awt/AWTEvent;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v2, "AWTEvent.dispatched() got IllegalAccessException "

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final getAccessControlContext()Ljava/security/AccessControlContext;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEvent;->acc:Ljava/security/AccessControlContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEvent;->acc:Ljava/security/AccessControlContext;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "AWTEvent is missing AccessControlContext"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/AWTEvent;->id:I

    return v0
.end method

.method public isConsumed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/AWTEvent;->consumed:Z

    return v0
.end method

.method public paramString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public setSource(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljava/util/EventObject;->source:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    instance-of v1, p1, Lorg/apache/poi/java/awt/Component;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/java/awt/Component;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v1, :cond_1

    instance-of v1, v1, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ljava/util/EventObject;->source:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object p1, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/AWTEvent;->nativeSetSource(Lorg/apache/poi/java/awt/peer/ComponentPeer;)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljava/util/EventObject;->source:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/poi/java/awt/Component;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lorg/apache/poi/java/awt/MenuComponent;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/java/awt/MenuComponent;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MenuComponent;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/AWTEvent;->paramString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ljava/util/EventObject;->source:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
