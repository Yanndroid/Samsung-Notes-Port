.class public abstract Lorg/apache/poi/java/awt/Component;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/image/ImageObserver;
.implements Lorg/apache/poi/java/awt/MenuContainer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Component$AWTTreeLock;,
        Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;,
        Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;,
        Lorg/apache/poi/java/awt/Component$BltBufferStrategy;,
        Lorg/apache/poi/java/awt/Component$BltSubRegionBufferStrategy;,
        Lorg/apache/poi/java/awt/Component$DummyRequestFocusController;,
        Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;,
        Lorg/apache/poi/java/awt/Component$FlipSubRegionBufferStrategy;,
        Lorg/apache/poi/java/awt/Component$ProxyCapabilities;,
        Lorg/apache/poi/java/awt/Component$SingleBufferStrategy;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final BOTTOM_ALIGNMENT:F = 1.0f

.field public static final CENTER_ALIGNMENT:F = 0.5f

.field private static final FOCUS_TRAVERSABLE_DEFAULT:I = 0x1

.field private static final FOCUS_TRAVERSABLE_SET:I = 0x2

.field private static final FOCUS_TRAVERSABLE_UNKNOWN:I = 0x0

.field public static final LEFT_ALIGNMENT:F = 0.0f

.field public static final LOCK:Ljava/lang/Object;

.field public static final RIGHT_ALIGNMENT:F = 1.0f

.field public static final TOP_ALIGNMENT:F = 0.0f

.field public static final actionListenerK:Ljava/lang/String; = "actionL"

.field public static final adjustmentListenerK:Ljava/lang/String; = "adjustmentL"

.field private static final coalesceEventsParams:[Ljava/lang/Class;

.field private static final coalesceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final componentListenerK:Ljava/lang/String; = "componentL"

.field public static final containerListenerK:Ljava/lang/String; = "containerL"

.field private static final eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field public static final focusListenerK:Ljava/lang/String; = "focusL"

.field private static final focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static final focusTraversalKeyPropertyNames:[Ljava/lang/String;

.field public static final hierarchyBoundsListenerK:Ljava/lang/String; = "hierarchyBoundsL"

.field public static final hierarchyListenerK:Ljava/lang/String; = "hierarchyL"

.field public static incRate:I = 0x0

.field public static final inputMethodListenerK:Ljava/lang/String; = "inputMethodL"

.field public static isInc:Z = false

.field public static final itemListenerK:Ljava/lang/String; = "itemL"

.field public static final keyListenerK:Ljava/lang/String; = "keyL"

.field private static final log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static final mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field public static final mouseListenerK:Ljava/lang/String; = "mouseL"

.field public static final mouseMotionListenerK:Ljava/lang/String; = "mouseMotionL"

.field public static final mouseWheelListenerK:Ljava/lang/String; = "mouseWheelL"

.field public static final ownedWindowK:Ljava/lang/String; = "ownedL"

.field private static requestFocusController:Lorg/apache/poi/sun/awt/RequestFocusController; = null

.field private static final serialVersionUID:J = -0x6a1559a628c35b66L

.field public static final textListenerK:Ljava/lang/String; = "textL"

.field public static final windowFocusListenerK:Ljava/lang/String; = "windowFocusL"

.field public static final windowListenerK:Ljava/lang/String; = "windowL"

.field public static final windowStateListenerK:Ljava/lang/String; = "windowStateL"


# instance fields
.field private volatile transient acc:Ljava/security/AccessControlContext;

.field public accessibleContext:Ljavax/accessibility/AccessibleContext;

.field public transient appContext:Lorg/apache/poi/sun/awt/AppContext;

.field private autoFocusTransferOnDisposal:Z

.field public background:Lorg/apache/poi/java/awt/Color;

.field public transient backgroundEraseDisabled:Z

.field private boundsOp:I

.field public transient bufferStrategy:Lorg/apache/poi/java/awt/image/BufferStrategy;

.field private changeSupport:Ljava/beans/PropertyChangeSupport;

.field private transient coalescingEnabled:Z

.field public transient componentListener:Lorg/apache/poi/java/awt/event/ComponentListener;

.field public transient componentOrientation:Lorg/apache/poi/java/awt/ComponentOrientation;

.field private componentSerializedDataVersion:I

.field private transient compoundShape:Lorg/apache/poi/sun/java2d/pipe/Region;

.field public cursor:Lorg/apache/poi/java/awt/Cursor;

.field public dropTarget:Lorg/apache/poi/java/awt/dnd/DropTarget;

.field public enabled:Z

.field public transient eventCache:[Lorg/apache/poi/sun/awt/EventQueueItem;

.field public eventMask:J

.field public transient focusListener:Lorg/apache/poi/java/awt/event/FocusListener;

.field public focusTraversalKeys:[Ljava/util/Set;

.field private focusTraversalKeysEnabled:Z

.field private focusable:Z

.field public font:Lorg/apache/poi/java/awt/Font;

.field public foreground:Lorg/apache/poi/java/awt/Color;

.field private transient graphicsConfig:Lorg/apache/poi/java/awt/GraphicsConfiguration;

.field public height:I

.field public transient hierarchyBoundsListener:Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

.field public transient hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

.field public ignoreRepaint:Z

.field public transient inputMethodListener:Lorg/apache/poi/java/awt/event/InputMethodListener;

.field private transient isAddNotifyComplete:Z

.field private isFocusTraversableOverridden:I

.field public isPacked:Z

.field public transient keyListener:Lorg/apache/poi/java/awt/event/KeyListener;

.field public locale:Ljava/util/Locale;

.field public maxSize:Lorg/apache/poi/java/awt/Dimension;

.field public maxSizeSet:Z

.field public minSize:Lorg/apache/poi/java/awt/Dimension;

.field public minSizeSet:Z

.field private transient mixingCutoutRegion:Lorg/apache/poi/sun/java2d/pipe/Region;

.field public transient mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

.field public transient mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

.field public transient mouseWheelListener:Lorg/apache/poi/java/awt/event/MouseWheelListener;

.field private name:Ljava/lang/String;

.field private nameExplicitlySet:Z

.field public newEventsOnly:Z

.field private transient objectLock:Ljava/lang/Object;

.field public transient parent:Lorg/apache/poi/java/awt/Container;

.field public transient peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

.field public peerFont:Lorg/apache/poi/java/awt/Font;

.field public popups:Ljava/util/Vector;

.field public prefSize:Lorg/apache/poi/java/awt/Dimension;

.field public prefSizeSet:Z

.field private volatile valid:Z

.field public visible:Z

.field public width:I

.field public transient windowClosingException:Ljava/lang/RuntimeException;

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/Component;

    const-string v0, "org.apache.poi.java.awt.Component"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/Component;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v0, "org.apache.poi.java.awt.event.Component"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/Component;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v0, "org.apache.poi.java.awt.focus.Component"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v0, "org.apache.poi.java.awt.mixing.Component"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v0, "forwardFocusTraversalKeys"

    const-string v1, "backwardFocusTraversalKeys"

    const-string/jumbo v2, "upCycleFocusTraversalKeys"

    const-string v3, "downCycleFocusTraversalKeys"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeyPropertyNames:[Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/java/awt/Component$AWTTreeLock;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/Component$AWTTreeLock;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/Component;->LOCK:Ljava/lang/Object;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Component;->initIDs()V

    :cond_0
    new-instance v0, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string v1, "awt.image.incrementaldraw"

    invoke-direct {v0, v1}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lorg/apache/poi/java/awt/Component;->isInc:Z

    new-instance v0, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string v3, "awt.image.redrawrate"

    invoke-direct {v0, v3}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_3
    const/16 v0, 0x64

    :goto_2
    sput v0, Lorg/apache/poi/java/awt/Component;->incRate:I

    new-instance v0, Lorg/apache/poi/java/awt/Component$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/Component$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setComponentAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;)V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/Component;->coalesceMap:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Lorg/apache/poi/java/awt/AWTEvent;

    aput-object v3, v0, v1

    const-class v1, Lorg/apache/poi/java/awt/AWTEvent;

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/java/awt/Component;->coalesceEventsParams:[Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/java/awt/Component$DummyRequestFocusController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/Component$DummyRequestFocusController;-><init>(Lorg/apache/poi/java/awt/Component$1;)V

    sput-object v0, Lorg/apache/poi/java/awt/Component;->requestFocusController:Lorg/apache/poi/sun/awt/RequestFocusController;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->graphicsConfig:Lorg/apache/poi/java/awt/GraphicsConfiguration;

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->bufferStrategy:Lorg/apache/poi/java/awt/image/BufferStrategy;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->ignoreRepaint:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/Component;->enabled:Z

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->valid:Z

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->nameExplicitlySet:Z

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/Component;->focusable:Z

    iput v1, p0, Lorg/apache/poi/java/awt/Component;->isFocusTraversableOverridden:I

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeysEnabled:Z

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/java/awt/Component;->acc:Ljava/security/AccessControlContext;

    sget-object v3, Lorg/apache/poi/java/awt/ComponentOrientation;->UNKNOWN:Lorg/apache/poi/java/awt/ComponentOrientation;

    iput-object v3, p0, Lorg/apache/poi/java/awt/Component;->componentOrientation:Lorg/apache/poi/java/awt/ComponentOrientation;

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    const-wide/16 v3, 0x1000

    iput-wide v3, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/java/awt/Component;->objectLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->isPacked:Z

    const/4 v3, 0x3

    iput v3, p0, Lorg/apache/poi/java/awt/Component;->boundsOp:I

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->compoundShape:Lorg/apache/poi/sun/java2d/pipe/Region;

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->mixingCutoutRegion:Lorg/apache/poi/sun/java2d/pipe/Region;

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->isAddNotifyComplete:Z

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;->checkCoalescing()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->coalescingEnabled:Z

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/Component;->autoFocusTransferOnDisposal:Z

    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/poi/java/awt/Component;->componentSerializedDataVersion:I

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    return-void
.end method

.method public static synthetic access$002(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/java2d/pipe/Region;)Lorg/apache/poi/sun/java2d/pipe/Region;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->mixingCutoutRegion:Lorg/apache/poi/sun/java2d/pipe/Region;

    return-object p1
.end method

.method public static synthetic access$100(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Point;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;->location_NoClientCode()Lorg/apache/poi/java/awt/Point;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Insets;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;->getInsets_NoClientCode()Lorg/apache/poi/java/awt/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Ljava/lang/Class;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/java/awt/Component;->isCoalesceEventsOverriden(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private final applyCurrentShapeBelowMe()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getSiblingIndexBelow()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Container;->recursiveApplyCurrentShape(I)V

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getSiblingIndexBelow()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/java/awt/Container;->recursiveApplyCurrentShape(I)V

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateCurrentShape()Lorg/apache/poi/sun/java2d/pipe/Region;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getNormalShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; normalShape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    move-object v3, p0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getSiblingIndexAbove()I

    move-result v3

    :goto_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v1, v3}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->getOpaqueShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/sun/java2d/pipe/Region;->getDifference(Lorg/apache/poi/sun/java2d/pipe/Region;)Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getNormalShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/sun/java2d/pipe/Region;->getIntersection(Lorg/apache/poi/sun/java2d/pipe/Region;)Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v3

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentShape="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method private checkCoalescing()Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/java/awt/Component;->coalesceMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    :cond_1
    new-instance v2, Lorg/apache/poi/java/awt/Component$3;

    invoke-direct {v2, p0, v0}, Lorg/apache/poi/java/awt/Component$3;-><init>(Lorg/apache/poi/java/awt/Component;Ljava/lang/Class;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doSwingSerialization()V
    .locals 7

    const-string v0, "javax.swing"

    invoke-static {v0}, Ljava/lang/Package;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    if-ne v2, v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/apache/poi/java/awt/Component$4;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/java/awt/Component$4;-><init>(Lorg/apache/poi/java/awt/Component;Ljava/lang/Class;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Method;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "compWriteObjectNotify"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/Component$5;

    invoke-direct {v0, p0, v4}, Lorg/apache/poi/java/awt/Component$5;-><init>(Lorg/apache/poi/java/awt/Component;Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getAppliedShape()Lorg/apache/poi/sun/java2d/pipe/Region;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->compoundShape:Lorg/apache/poi/sun/java2d/pipe/Region;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->compoundShape:Lorg/apache/poi/sun/java2d/pipe/Region;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getNormalShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private getInsets_NoClientCode()Lorg/apache/poi/java/awt/Insets;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/ContainerPeer;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/java/awt/peer/ContainerPeer;

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ContainerPeer;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Insets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Insets;

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/Insets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/java/awt/Insets;-><init>(IIII)V

    return-object v0
.end method

.method private static native initIDs()V
.end method

.method private static isCoalesceEventsOverriden(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    sget-object v2, Lorg/apache/poi/java/awt/Component;->coalesceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-nez v4, :cond_1

    invoke-static {v0}, Lorg/apache/poi/java/awt/Component;->isCoalesceEventsOverriden(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    :try_start_0
    const-string v0, "coalesceEvents"

    sget-object v2, Lorg/apache/poi/java/awt/Component;->coalesceEventsParams:[Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    return v1
.end method

.method public static isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_3
    return v0
.end method

.method private isRequestFocusAccepted(ZZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isFocusable()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x12c

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v0, :cond_2

    sget-object p1, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "peer is null"

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainingWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Window;->isFocusableWindow()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getContainingWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v4

    if-eq v4, v0, :cond_4

    const/4 v3, 0x0

    :cond_4
    move-object v5, v3

    const/4 v0, 0x1

    if-eq v5, p0, :cond_9

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    sget-object v3, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->ACTIVATION:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    if-ne v3, p3, :cond_7

    sget-object p1, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "cause is activation"

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_6
    return v0

    :cond_7
    sget-object v4, Lorg/apache/poi/java/awt/Component;->requestFocusController:Lorg/apache/poi/sun/awt/RequestFocusController;

    move-object v6, p0

    move v7, p1

    move v8, p2

    move-object v9, p3

    invoke-interface/range {v4 .. v9}, Lorg/apache/poi/sun/awt/RequestFocusController;->acceptRequestFocus(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result p1

    sget-object p2, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p2, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p3

    if-eqz p3, :cond_8

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p3, v1

    const-string v0, "RequestFocusController returns {0}"

    invoke-virtual {p2, v0, p3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return p1

    :cond_9
    :goto_0
    sget-object p1, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p2, "focus owner is null or this"

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_a
    return v0

    :cond_b
    :goto_1
    sget-object p1, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_c

    const-string p2, "Component doesn\'t have toplevel"

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_c
    return v1

    :cond_d
    :goto_2
    sget-object p1, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "Not focusable or not visible"

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_e
    return v1
.end method

.method private location_NoClientCode()Lorg/apache/poi/java/awt/Point;
    .locals 3

    new-instance v0, Lorg/apache/poi/java/awt/Point;

    iget v1, p0, Lorg/apache/poi/java/awt/Component;->x:I

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->y:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    return-object v0
.end method

.method private notifyNewBounds(ZZ)V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->componentListener:Lorg/apache/poi/java/awt/event/ComponentListener;

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    invoke-static {v2, v3}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->countComponents()I

    move-result v1

    if-lez v1, :cond_4

    const-wide/32 v1, 0x10000

    invoke-static {v1, v2}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v1

    if-eqz p1, :cond_1

    const/16 p1, 0x57a

    invoke-virtual {v0, p1, v4, v5, v1}, Lorg/apache/poi/java/awt/Container;->createChildHierarchyEvents(IJZ)V

    :cond_1
    if-eqz p2, :cond_4

    const/16 p1, 0x579

    invoke-virtual {v0, p1, v4, v5, v1}, Lorg/apache/poi/java/awt/Container;->createChildHierarchyEvents(IJZ)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    new-instance p1, Lorg/apache/poi/java/awt/event/ComponentEvent;

    const/16 v0, 0x65

    invoke-direct {p1, p0, v0}, Lorg/apache/poi/java/awt/event/ComponentEvent;-><init>(Lorg/apache/poi/java/awt/Component;I)V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_3
    if-eqz p2, :cond_4

    new-instance p1, Lorg/apache/poi/java/awt/event/ComponentEvent;

    const/16 p2, 0x64

    invoke-direct {p1, p0, p2}, Lorg/apache/poi/java/awt/event/ComponentEvent;-><init>(Lorg/apache/poi/java/awt/Component;I)V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->objectLock:Ljava/lang/Object;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->acc:Ljava/security/AccessControlContext;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;->checkCoalescing()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->coalescingEnabled:Z

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->componentSerializedDataVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->focusable:Z

    iput v1, p0, Lorg/apache/poi/java/awt/Component;->isFocusTraversableOverridden:I

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->initializeFocusTraversalKeys()V

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeysEnabled:Z

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v2, "componentL"

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/ComponentListener;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/java/awt/event/ComponentListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->addComponentListener(Lorg/apache/poi/java/awt/event/ComponentListener;)V

    goto :goto_0

    :cond_1
    const-string v2, "focusL"

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/FocusListener;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/java/awt/event/FocusListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->addFocusListener(Lorg/apache/poi/java/awt/event/FocusListener;)V

    goto :goto_0

    :cond_2
    const-string v2, "keyL"

    if-ne v2, v0, :cond_3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/KeyListener;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/java/awt/event/KeyListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->addKeyListener(Lorg/apache/poi/java/awt/event/KeyListener;)V

    goto :goto_0

    :cond_3
    const-string v2, "mouseL"

    if-ne v2, v0, :cond_4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseListener;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->addMouseListener(Lorg/apache/poi/java/awt/event/MouseListener;)V

    goto :goto_0

    :cond_4
    const-string v2, "mouseMotionL"

    if-ne v2, v0, :cond_5

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseMotionListener;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/java/awt/event/MouseMotionListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->addMouseMotionListener(Lorg/apache/poi/java/awt/event/MouseMotionListener;)V

    goto :goto_0

    :cond_5
    const-string v2, "inputMethodL"

    if-ne v2, v0, :cond_6

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/InputMethodListener;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/java/awt/event/InputMethodListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->addInputMethodListener(Lorg/apache/poi/java/awt/event/InputMethodListener;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/OptionalDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    iget-boolean v3, v2, Ljava/io/OptionalDataException;->eof:Z

    if-eqz v3, :cond_11

    :goto_1
    if-eqz v0, :cond_8

    check-cast v0, Lorg/apache/poi/java/awt/ComponentOrientation;

    goto :goto_2

    :cond_8
    sget-object v0, Lorg/apache/poi/java/awt/ComponentOrientation;->UNKNOWN:Lorg/apache/poi/java/awt/ComponentOrientation;

    :goto_2
    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->componentOrientation:Lorg/apache/poi/java/awt/ComponentOrientation;

    :goto_3
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v2, "hierarchyL"

    if-ne v2, v0, :cond_9

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/HierarchyListener;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/java/awt/event/HierarchyListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->addHierarchyListener(Lorg/apache/poi/java/awt/event/HierarchyListener;)V

    goto :goto_3

    :cond_9
    const-string v2, "hierarchyBoundsL"

    if-ne v2, v0, :cond_a

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->addHierarchyBoundsListener(Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    iget-boolean v2, v0, Ljava/io/OptionalDataException;->eof:Z

    if-eqz v2, :cond_10

    :cond_b
    :goto_4
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mouseWheelL"

    if-ne v2, v0, :cond_c

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseWheelListener;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/java/awt/event/MouseWheelListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->addMouseWheelListener(Lorg/apache/poi/java/awt/event/MouseWheelListener;)V

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/OptionalDataException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    iget-boolean v0, p1, Ljava/io/OptionalDataException;->eof:Z

    if-eqz v0, :cond_f

    :cond_d
    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->popups:Ljava/util/Vector;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    :goto_5
    if-ge v1, p1, :cond_e

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->popups:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/PopupMenu;

    iput-object p0, v0, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    return-void

    :cond_f
    throw p1

    :cond_10
    throw v0

    :cond_11
    throw v2
.end method

.method private repaintParentIfNeeded(IIII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v0, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Component;->repaint(IIII)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->repaint()V

    :cond_0
    return-void
.end method

.method private reshapeNativePeer(IIIII)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    move v2, p1

    move v3, p2

    :goto_0
    if-eqz v0, :cond_0

    iget-object p1, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of p1, p1, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz p1, :cond_0

    iget p1, v0, Lorg/apache/poi/java/awt/Component;->x:I

    add-int/2addr v2, p1

    iget p1, v0, Lorg/apache/poi/java/awt/Component;->y:I

    add-int/2addr v3, p1

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setBounds(IIIII)V

    return-void
.end method

.method public static declared-synchronized setRequestFocusController(Lorg/apache/poi/sun/awt/RequestFocusController;)V
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/Component;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    new-instance p0, Lorg/apache/poi/java/awt/Component$DummyRequestFocusController;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/poi/java/awt/Component$DummyRequestFocusController;-><init>(Lorg/apache/poi/java/awt/Component$1;)V

    :cond_0
    sput-object p0, Lorg/apache/poi/java/awt/Component;->requestFocusController:Lorg/apache/poi/sun/awt/RequestFocusController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;->doSwingSerialization()V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->componentListener:Lorg/apache/poi/java/awt/event/ComponentListener;

    const-string v1, "componentL"

    invoke-static {p1, v1, v0}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->focusListener:Lorg/apache/poi/java/awt/event/FocusListener;

    const-string v1, "focusL"

    invoke-static {p1, v1, v0}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->keyListener:Lorg/apache/poi/java/awt/event/KeyListener;

    const-string v1, "keyL"

    invoke-static {p1, v1, v0}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

    const-string v1, "mouseL"

    invoke-static {p1, v1, v0}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

    const-string v1, "mouseMotionL"

    invoke-static {p1, v1, v0}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->inputMethodListener:Lorg/apache/poi/java/awt/event/InputMethodListener;

    const-string v1, "inputMethodL"

    invoke-static {p1, v1, v0}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->componentOrientation:Lorg/apache/poi/java/awt/ComponentOrientation;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

    const-string v2, "hierarchyL"

    invoke-static {p1, v2, v1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->hierarchyBoundsListener:Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    const-string v2, "hierarchyBoundsL"

    invoke-static {p1, v2, v1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->mouseWheelListener:Lorg/apache/poi/java/awt/event/MouseWheelListener;

    const-string v2, "mouseWheelL"

    invoke-static {p1, v2, v1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public action(Lorg/apache/poi/java/awt/Event;Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public add(Lorg/apache/poi/java/awt/PopupMenu;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/MenuContainer;->remove(Lorg/apache/poi/java/awt/MenuComponent;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->popups:Ljava/util/Vector;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->popups:Ljava/util/Vector;

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->popups:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iput-object p0, p1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/PopupMenu;->addNotify()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized addComponentListener(Lorg/apache/poi/java/awt/event/ComponentListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->componentListener:Lorg/apache/poi/java/awt/event/ComponentListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/ComponentListener;Lorg/apache/poi/java/awt/event/ComponentListener;)Lorg/apache/poi/java/awt/event/ComponentListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->componentListener:Lorg/apache/poi/java/awt/event/ComponentListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFocusListener(Lorg/apache/poi/java/awt/event/FocusListener;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->focusListener:Lorg/apache/poi/java/awt/event/FocusListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/FocusListener;Lorg/apache/poi/java/awt/event/FocusListener;)Lorg/apache/poi/java/awt/event/FocusListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->focusListener:Lorg/apache/poi/java/awt/event/FocusListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of p1, p1, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    const-wide/16 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/java/awt/Container;->proxyEnableEvents(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addHierarchyBoundsListener(Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->hierarchyBoundsListener:Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    const-wide/32 v1, 0x10000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    iget-wide v5, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr v5, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;)Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->hierarchyBoundsListener:Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v4, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0, v1, v2, v4}, Lorg/apache/poi/java/awt/Component;->adjustListeningChildrenOnParent(JI)V

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public addHierarchyListener(Lorg/apache/poi/java/awt/event/HierarchyListener;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

    const-wide/32 v1, 0x8000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    iget-wide v5, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr v5, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/HierarchyListener;Lorg/apache/poi/java/awt/event/HierarchyListener;)Lorg/apache/poi/java/awt/event/HierarchyListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v4, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0, v1, v2, v4}, Lorg/apache/poi/java/awt/Component;->adjustListeningChildrenOnParent(JI)V

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized addInputMethodListener(Lorg/apache/poi/java/awt/event/InputMethodListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->inputMethodListener:Lorg/apache/poi/java/awt/event/InputMethodListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/InputMethodListener;Lorg/apache/poi/java/awt/event/InputMethodListener;)Lorg/apache/poi/java/awt/event/InputMethodListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->inputMethodListener:Lorg/apache/poi/java/awt/event/InputMethodListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addKeyListener(Lorg/apache/poi/java/awt/event/KeyListener;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->keyListener:Lorg/apache/poi/java/awt/event/KeyListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/KeyListener;Lorg/apache/poi/java/awt/event/KeyListener;)Lorg/apache/poi/java/awt/event/KeyListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->keyListener:Lorg/apache/poi/java/awt/event/KeyListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of p1, p1, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    const-wide/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/java/awt/Container;->proxyEnableEvents(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMouseListener(Lorg/apache/poi/java/awt/event/MouseListener;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/MouseListener;Lorg/apache/poi/java/awt/event/MouseListener;)Lorg/apache/poi/java/awt/event/MouseListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of p1, p1, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/java/awt/Container;->proxyEnableEvents(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMouseMotionListener(Lorg/apache/poi/java/awt/event/MouseMotionListener;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/MouseMotionListener;Lorg/apache/poi/java/awt/event/MouseMotionListener;)Lorg/apache/poi/java/awt/event/MouseMotionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of p1, p1, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/java/awt/Container;->proxyEnableEvents(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMouseWheelListener(Lorg/apache/poi/java/awt/event/MouseWheelListener;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseWheelListener:Lorg/apache/poi/java/awt/event/MouseWheelListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/MouseWheelListener;Lorg/apache/poi/java/awt/event/MouseWheelListener;)Lorg/apache/poi/java/awt/event/MouseWheelListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->mouseWheelListener:Lorg/apache/poi/java/awt/event/MouseWheelListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of p1, p1, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    const-wide/32 v0, 0x20000

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/java/awt/Container;->proxyEnableEvents(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addNotify()V
    .locals 13

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1

    instance-of v5, v1, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->relocateComponent()V

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Container;->isRecursivelyVisibleUpToHeavyweightContainer()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-interface {v1, v2}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setVisible(Z)V

    goto :goto_2

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createComponent(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/peer/LightweightPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    :cond_2
    iget-object v5, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v5, :cond_d

    iget-object v6, p0, Lorg/apache/poi/java/awt/Component;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

    const-wide/16 v7, 0x10

    if-nez v6, :cond_4

    iget-wide v9, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr v9, v7

    cmp-long v6, v9, v3

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move-wide v7, v3

    :cond_4
    :goto_1
    iget-object v6, p0, Lorg/apache/poi/java/awt/Component;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

    const-wide/16 v9, 0x20

    if-nez v6, :cond_5

    iget-wide v11, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr v11, v9

    cmp-long v6, v11, v3

    if-eqz v6, :cond_6

    :cond_5
    or-long/2addr v7, v9

    :cond_6
    iget-object v6, p0, Lorg/apache/poi/java/awt/Component;->mouseWheelListener:Lorg/apache/poi/java/awt/event/MouseWheelListener;

    const-wide/32 v9, 0x20000

    if-nez v6, :cond_7

    iget-wide v11, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr v11, v9

    cmp-long v6, v11, v3

    if-eqz v6, :cond_8

    :cond_7
    or-long/2addr v7, v9

    :cond_8
    iget-object v6, p0, Lorg/apache/poi/java/awt/Component;->focusListener:Lorg/apache/poi/java/awt/event/FocusListener;

    const-wide/16 v9, 0x4

    if-nez v6, :cond_9

    iget-wide v11, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr v11, v9

    cmp-long v6, v11, v3

    if-eqz v6, :cond_a

    :cond_9
    or-long/2addr v7, v9

    :cond_a
    iget-object v6, p0, Lorg/apache/poi/java/awt/Component;->keyListener:Lorg/apache/poi/java/awt/event/KeyListener;

    const-wide/16 v9, 0x8

    if-nez v6, :cond_b

    iget-wide v11, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr v11, v9

    cmp-long v6, v11, v3

    if-eqz v6, :cond_c

    :cond_b
    or-long/2addr v7, v9

    :cond_c
    cmp-long v6, v7, v3

    if-eqz v6, :cond_d

    invoke-virtual {v5, v7, v8}, Lorg/apache/poi/java/awt/Container;->proxyEnableEvents(J)V

    :cond_d
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidate()V

    iget-object v5, p0, Lorg/apache/poi/java/awt/Component;->popups:Ljava/util/Vector;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    goto :goto_3

    :cond_e
    move v5, v2

    :goto_3
    move v6, v2

    :goto_4
    if-ge v6, v5, :cond_f

    iget-object v7, p0, Lorg/apache/poi/java/awt/Component;->popups:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/java/awt/PopupMenu;

    invoke-virtual {v7}, Lorg/apache/poi/java/awt/PopupMenu;->addNotify()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_f
    iget-object v5, p0, Lorg/apache/poi/java/awt/Component;->dropTarget:Lorg/apache/poi/java/awt/dnd/DropTarget;

    if-eqz v5, :cond_10

    invoke-virtual {v5, v1}, Lorg/apache/poi/java/awt/dnd/DropTarget;->addNotify(Lorg/apache/poi/java/awt/peer/ComponentPeer;)V

    :cond_10
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getFont()Lorg/apache/poi/java/awt/Font;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peerFont:Lorg/apache/poi/java/awt/Font;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->isAddNotifyComplete:Z

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Container;->increaseComponentCount(Lorg/apache/poi/java/awt/Component;)V

    :cond_11
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->updateZOrder()V

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->isAddNotifyComplete:Z

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->mixOnShowing()V

    :cond_12
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->isAddNotifyComplete:Z

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

    if-nez v1, :cond_13

    iget-wide v5, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/32 v7, 0x8000

    and-long/2addr v5, v7

    cmp-long v1, v5, v3

    if-nez v1, :cond_13

    invoke-static {v7, v8}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_13
    new-instance v1, Lorg/apache/poi/java/awt/event/HierarchyEvent;

    const/16 v4, 0x578

    iget-object v6, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    const/4 v3, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isRecursivelyVisible()Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v2, 0x4

    :cond_14
    or-int/2addr v2, v3

    int-to-long v7, v2

    move-object v2, v1

    move-object v3, p0

    move-object v5, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/java/awt/event/HierarchyEvent;-><init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;J)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Component;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v1, :cond_1

    new-instance v1, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v1, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v1, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p2, :cond_0

    :try_start_0
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v1, :cond_1

    new-instance v1, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v1, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v1, p1, p2}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public adjustListeningChildrenOnParent(JI)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/java/awt/Container;->adjustListeningChildren(JI)V

    :cond_0
    return-void
.end method

.method public applyComponentOrientation(Lorg/apache/poi/java/awt/ComponentOrientation;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->setComponentOrientation(Lorg/apache/poi/java/awt/ComponentOrientation;)V

    return-void
.end method

.method public applyCompoundShape(Lorg/apache/poi/sun/java2d/pipe/Region;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->areBoundsValid()Z

    move-result v0

    const-string/jumbo v1, "this = "

    if-nez v0, :cond_1

    sget-object p1, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v0, 0x1f4

    invoke-virtual {p1, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; areBoundsValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->areBoundsValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/apache/poi/sun/java2d/pipe/Region;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p1, Lorg/apache/poi/sun/java2d/pipe/Region;->EMPTY_REGION:Lorg/apache/poi/sun/java2d/pipe/Region;

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getNormalShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/sun/java2d/pipe/Region;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->compoundShape:Lorg/apache/poi/sun/java2d/pipe/Region;

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->compoundShape:Lorg/apache/poi/sun/java2d/pipe/Region;

    :goto_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->applyShape(Lorg/apache/poi/sun/java2d/pipe/Region;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;->getAppliedShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/sun/java2d/pipe/Region;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->compoundShape:Lorg/apache/poi/sun/java2d/pipe/Region;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getLocationOnWindow()Lorg/apache/poi/java/awt/Point;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v4, 0x190

    invoke-virtual {v3, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; compAbsolute="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; shape="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_6
    iget v1, v2, Lorg/apache/poi/java/awt/Point;->x:I

    neg-int v1, v1

    iget v2, v2, Lorg/apache/poi/java/awt/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/sun/java2d/pipe/Region;->getTranslatedRegion(II)Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object p1

    goto :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method public applyCurrentShape()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->areBoundsValid()Z

    move-result v0

    const-string/jumbo v1, "this = "

    const/16 v2, 0x1f4

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; areBoundsValid = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->areBoundsValid()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;->calculateCurrentShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->applyCompoundShape(Lorg/apache/poi/sun/java2d/pipe/Region;)V

    return-void
.end method

.method public final areBoundsValid()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->getLayout()Lorg/apache/poi/java/awt/LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public areFocusTraversalKeysSet(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeys:[Ljava/util/Set;

    if-eqz v0, :cond_0

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid focus traversal key identifier"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public areInputMethodsEnabled()Z
    .locals 6

    iget-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->keyListener:Lorg/apache/poi/java/awt/event/KeyListener;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public autoProcessMouseWheel(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)V
    .locals 0

    return-void
.end method

.method public bounds()Lorg/apache/poi/java/awt/Rectangle;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/poi/java/awt/Rectangle;

    iget v1, p0, Lorg/apache/poi/java/awt/Component;->x:I

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->y:I

    iget v3, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v4, p0, Lorg/apache/poi/java/awt/Component;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public final canBeFocusOwner()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final canBeFocusOwnerRecursively()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->canBeFocusOwner()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Container;->canContainFocusOwner(Lorg/apache/poi/java/awt/Component;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_1
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkGD(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->graphicsConfig:Lorg/apache/poi/java/awt/GraphicsConfiguration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsDevice;->getIDstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adding a container to a container on a different GraphicsDevice"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public checkImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Component;->checkImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Toolkit;->checkImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->checkImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Toolkit;->checkImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result p1

    :goto_1
    return p1
.end method

.method public checkImage(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/java/awt/image/ImageObserver;)I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0, p2}, Lorg/apache/poi/java/awt/Component;->checkImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result p1

    return p1
.end method

.method public final checkTreeLock()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This function should be called while holding treeLock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkWindowClosingException()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    instance-of v1, p0, Lorg/apache/poi/java/awt/Dialog;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Dialog;->interruptBlocking()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public clearCurrentFocusCycleRootOnHide()V
    .locals 0

    return-void
.end method

.method public clearMostRecentFocusOwnerOnHide()V
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearMostRecentFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method

.method public coalesceEvents(Lorg/apache/poi/java/awt/AWTEvent;Lorg/apache/poi/java/awt/AWTEvent;)Lorg/apache/poi/java/awt/AWTEvent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public constructComponentName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public contains(II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->inside(II)Z

    move-result p1

    return p1
.end method

.method public contains(Lorg/apache/poi/java/awt/Point;)Z
    .locals 1

    iget v0, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/java/awt/Component;->contains(II)Z

    move-result p1

    return p1
.end method

.method public containsFocus()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isFocusOwner()Z

    move-result v0

    return v0
.end method

.method public countHierarchyMembers()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createBufferStrategy(I)V
    .locals 5

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    new-instance v1, Lorg/apache/poi/java/awt/BufferCapabilities;

    new-instance v2, Lorg/apache/poi/java/awt/ImageCapabilities;

    invoke-direct {v2, v0}, Lorg/apache/poi/java/awt/ImageCapabilities;-><init>(Z)V

    new-instance v3, Lorg/apache/poi/java/awt/ImageCapabilities;

    invoke-direct {v3, v0}, Lorg/apache/poi/java/awt/ImageCapabilities;-><init>(Z)V

    sget-object v4, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;->UNDEFINED:Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/java/awt/BufferCapabilities;-><init>(Lorg/apache/poi/java/awt/ImageCapabilities;Lorg/apache/poi/java/awt/ImageCapabilities;Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;)V

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/java/awt/Component;->createBufferStrategy(ILorg/apache/poi/java/awt/BufferCapabilities;)V
    :try_end_0
    .catch Lorg/apache/poi/java/awt/AWTException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    new-instance v1, Lorg/apache/poi/java/awt/BufferCapabilities;

    new-instance v2, Lorg/apache/poi/java/awt/ImageCapabilities;

    invoke-direct {v2, v0}, Lorg/apache/poi/java/awt/ImageCapabilities;-><init>(Z)V

    new-instance v3, Lorg/apache/poi/java/awt/ImageCapabilities;

    invoke-direct {v3, v0}, Lorg/apache/poi/java/awt/ImageCapabilities;-><init>(Z)V

    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/poi/java/awt/BufferCapabilities;-><init>(Lorg/apache/poi/java/awt/ImageCapabilities;Lorg/apache/poi/java/awt/ImageCapabilities;Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;)V

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/java/awt/Component;->createBufferStrategy(ILorg/apache/poi/java/awt/BufferCapabilities;)V
    :try_end_1
    .catch Lorg/apache/poi/java/awt/AWTException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    new-instance v1, Lorg/apache/poi/java/awt/BufferCapabilities;

    new-instance v2, Lorg/apache/poi/java/awt/ImageCapabilities;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/poi/java/awt/ImageCapabilities;-><init>(Z)V

    new-instance v4, Lorg/apache/poi/java/awt/ImageCapabilities;

    invoke-direct {v4, v3}, Lorg/apache/poi/java/awt/ImageCapabilities;-><init>(Z)V

    invoke-direct {v1, v2, v4, v0}, Lorg/apache/poi/java/awt/BufferCapabilities;-><init>(Lorg/apache/poi/java/awt/ImageCapabilities;Lorg/apache/poi/java/awt/ImageCapabilities;Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;)V

    :try_start_2
    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/java/awt/Component;->createBufferStrategy(ILorg/apache/poi/java/awt/BufferCapabilities;)V
    :try_end_2
    .catch Lorg/apache/poi/java/awt/AWTException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    new-instance p1, Ljava/lang/InternalError;

    const-string v0, "Could not create a buffer strategy"

    invoke-direct {p1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createBufferStrategy(ILorg/apache/poi/java/awt/BufferCapabilities;)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_5

    if-eqz p2, :cond_4

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->bufferStrategy:Lorg/apache/poi/java/awt/image/BufferStrategy;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/BufferStrategy;->dispose()V

    :cond_0
    if-ne p1, v0, :cond_1

    new-instance p1, Lorg/apache/poi/java/awt/Component$SingleBufferStrategy;

    invoke-direct {p1, p0, p2}, Lorg/apache/poi/java/awt/Component$SingleBufferStrategy;-><init>(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/BufferCapabilities;)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->bufferStrategy:Lorg/apache/poi/java/awt/image/BufferStrategy;

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Lorg/apache/poi/java/awt/GraphicsEnvironment;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sun/java2d/SunGraphicsEnvironment;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/BufferCapabilities;->isPageFlipping()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/java2d/SunGraphicsEnvironment;->isFlipStrategyPreferred(Lorg/apache/poi/java/awt/peer/ComponentPeer;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/java/awt/Component$ProxyCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lorg/apache/poi/java/awt/Component$ProxyCapabilities;-><init>(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/BufferCapabilities;Lorg/apache/poi/java/awt/Component$1;)V

    move-object p2, v0

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/java/awt/BufferCapabilities;->isPageFlipping()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/poi/java/awt/Component$FlipSubRegionBufferStrategy;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/java/awt/Component$FlipSubRegionBufferStrategy;-><init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/BufferCapabilities;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/apache/poi/java/awt/Component$BltSubRegionBufferStrategy;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/java/awt/Component$BltSubRegionBufferStrategy;-><init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/BufferCapabilities;)V

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->bufferStrategy:Lorg/apache/poi/java/awt/image/BufferStrategy;

    :goto_1
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No capabilities specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of buffers must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createHierarchyEvents(ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;JZ)I
    .locals 9

    const/4 v0, 0x1

    const/16 v1, 0x1f4

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lorg/apache/poi/java/awt/Component;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p1, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "This code must never be reached"

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-object v4, Lorg/apache/poi/java/awt/Component;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v4, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    cmp-long p4, p4, v2

    if-eqz p4, :cond_0

    const-string p4, "Assertion (changeFlags == 0) failed"

    invoke-virtual {v4, p4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    iget-object p4, p0, Lorg/apache/poi/java/awt/Component;->hierarchyBoundsListener:Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    if-nez p4, :cond_1

    iget-wide p4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/32 v4, 0x10000

    and-long/2addr p4, v4

    cmp-long p4, p4, v2

    if-nez p4, :cond_1

    if-eqz p6, :cond_3

    :cond_1
    new-instance p4, Lorg/apache/poi/java/awt/event/HierarchyEvent;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/apache/poi/java/awt/event/HierarchyEvent;-><init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;)V

    invoke-virtual {p0, p4}, Lorg/apache/poi/java/awt/Component;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return v0

    :pswitch_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

    if-nez v1, :cond_2

    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/32 v6, 0x8000

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    if-eqz p6, :cond_3

    :cond_2
    new-instance p6, Lorg/apache/poi/java/awt/event/HierarchyEvent;

    move-object v2, p6

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/java/awt/event/HierarchyEvent;-><init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;J)V

    invoke-virtual {p0, p6}, Lorg/apache/poi/java/awt/Component;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x578
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public createImage(II)Lorg/apache/poi/java/awt/Image;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/Component;->createImage(II)Lorg/apache/poi/java/awt/Image;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->createImage(II)Lorg/apache/poi/java/awt/Image;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public createImage(Lorg/apache/poi/java/awt/image/ImageProducer;)Lorg/apache/poi/java/awt/Image;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->createImage(Lorg/apache/poi/java/awt/image/ImageProducer;)Lorg/apache/poi/java/awt/Image;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Toolkit;->createImage(Lorg/apache/poi/java/awt/image/ImageProducer;)Lorg/apache/poi/java/awt/Image;

    move-result-object p1

    return-object p1
.end method

.method public createVolatileImage(II)Lorg/apache/poi/java/awt/image/VolatileImage;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/Component;->createVolatileImage(II)Lorg/apache/poi/java/awt/image/VolatileImage;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->createVolatileImage(II)Lorg/apache/poi/java/awt/image/VolatileImage;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public createVolatileImage(IILorg/apache/poi/java/awt/ImageCapabilities;)Lorg/apache/poi/java/awt/image/VolatileImage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->createVolatileImage(II)Lorg/apache/poi/java/awt/image/VolatileImage;

    move-result-object p1

    return-object p1
.end method

.method public deliverEvent(Lorg/apache/poi/java/awt/Event;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->postEvent(Lorg/apache/poi/java/awt/Event;)Z

    return-void
.end method

.method public disable()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->enabled:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearMostRecentFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->enabled:Z

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isFocusOwner()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->containsFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->isAutoFocusTransferEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Component;->transferFocus(Z)Z

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setEnabled(Z)V

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->updateCursorImmediately()V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-eqz v0, :cond_3

    const-string v1, "AccessibleState"

    const/4 v2, 0x0

    sget-object v3, Ljavax/accessibility/AccessibleState;->ENABLED:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/accessibility/AccessibleContext;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public final disableEvents(J)V
    .locals 8

    monitor-enter p0

    const-wide/32 v0, 0x8000

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/Component;->hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-wide v0, v4

    :goto_0
    const-wide/32 v2, 0x10000

    and-long v6, p1, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/apache/poi/java/awt/Component;->hierarchyBoundsListener:Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    if-nez v6, :cond_1

    iget-wide v6, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_1

    or-long/2addr v0, v2

    :cond_1
    iget-wide v2, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    not-long p1, p1

    and-long/2addr p1, v2

    iput-wide p1, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 p2, -0x1

    :try_start_1
    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/poi/java/awt/Component;->adjustListeningChildrenOnParent(JI)V

    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_2
    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->dispatchEventImpl(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public dispatchEventImpl(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/poi/java/awt/Component;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is being dispatched on the wrong AppContext"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lorg/apache/poi/java/awt/Component;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    const-string/jumbo v5, "{0}"

    invoke-virtual {v1, v5, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {p1}, Lorg/apache/poi/java/awt/EventQueue;->setCurrentEventAndMostRecentTime(Lorg/apache/poi/java/awt/AWTEvent;)V

    instance-of v1, p1, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;

    invoke-virtual {p1}, Lorg/apache/poi/sun/awt/dnd/SunDropTargetEvent;->dispatch()V

    return-void

    :cond_2
    iget-boolean v1, p1, Lorg/apache/poi/java/awt/AWTEvent;->focusManagerIsDispatching:Z

    if-nez v1, :cond_4

    iget-boolean v1, p1, Lorg/apache/poi/java/awt/AWTEvent;->isPosted:Z

    if-eqz v1, :cond_3

    invoke-static {p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->retargetFocusEvent(Lorg/apache/poi/java/awt/AWTEvent;)Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object p1

    iput-boolean v4, p1, Lorg/apache/poi/java/awt/AWTEvent;->isPosted:Z

    :cond_3
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    instance-of v1, p1, Lorg/apache/poi/java/awt/event/FocusEvent;

    if-eqz v1, :cond_5

    sget-object v1, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_5
    const/16 v1, 0x1fb

    if-ne v0, v1, :cond_6

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->eventTypeEnabled(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->handlesWheelScrolling()Z

    move-result v3

    if-nez v3, :cond_6

    move-object v3, p1

    check-cast v3, Lorg/apache/poi/java/awt/event/MouseWheelEvent;

    invoke-virtual {p0, v3}, Lorg/apache/poi/java/awt/Component;->dispatchMouseWheelToAncestor(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    :cond_6
    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/poi/java/awt/Toolkit;->notifyAWTEventListeners(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->isConsumed()Z

    move-result v4

    if-nez v4, :cond_7

    instance-of v4, p1, Lorg/apache/poi/java/awt/event/KeyEvent;

    if-eqz v4, :cond_7

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Lorg/apache/poi/java/awt/event/KeyEvent;

    invoke-virtual {v4, p0, v5}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->processKeyEvent(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/KeyEvent;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->isConsumed()Z

    move-result v4

    if-eqz v4, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->areInputMethodsEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    instance-of v4, p1, Lorg/apache/poi/java/awt/event/InputMethodEvent;

    if-eqz v4, :cond_8

    instance-of v4, p0, Lorg/apache/poi/sun/awt/im/CompositionArea;

    if-eqz v4, :cond_9

    :cond_8
    instance-of v4, p1, Lorg/apache/poi/java/awt/event/InputEvent;

    if-nez v4, :cond_9

    instance-of v4, p1, Lorg/apache/poi/java/awt/event/FocusEvent;

    if-eqz v4, :cond_c

    :cond_9
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getInputContext()Lorg/apache/poi/java/awt/im/InputContext;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4, p1}, Lorg/apache/poi/java/awt/im/InputContext;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->isConsumed()Z

    move-result v4

    if-eqz v4, :cond_c

    instance-of v0, p1, Lorg/apache/poi/java/awt/event/FocusEvent;

    if-eqz v0, :cond_a

    sget-object v0, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3579: Skipping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    const/16 v4, 0x3ec

    if-ne v0, v4, :cond_c

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getInputContext()Lorg/apache/poi/java/awt/im/InputContext;

    move-result-object v4

    if-eqz v4, :cond_c

    instance-of v5, v4, Lorg/apache/poi/sun/awt/im/InputContext;

    if-eqz v5, :cond_c

    check-cast v4, Lorg/apache/poi/sun/awt/im/InputContext;

    invoke-virtual {v4}, Lorg/apache/poi/sun/awt/im/InputContext;->disableNativeIM()V

    :cond_c
    const/16 v4, 0xc9

    if-eq v0, v4, :cond_10

    const/16 v5, 0x191

    if-eq v0, v5, :cond_d

    const/16 v5, 0x192

    if-eq v0, v5, :cond_d

    goto :goto_1

    :cond_d
    instance-of v5, p0, Lorg/apache/poi/java/awt/Container;

    if-eqz v5, :cond_e

    move-object v5, p0

    goto :goto_0

    :cond_e
    iget-object v5, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    :goto_0
    check-cast v5, Lorg/apache/poi/java/awt/Container;

    if-eqz v5, :cond_11

    move-object v6, p1

    check-cast v6, Lorg/apache/poi/java/awt/event/KeyEvent;

    invoke-virtual {v5, v6}, Lorg/apache/poi/java/awt/Container;->preProcessKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->isConsumed()Z

    move-result v5

    if-eqz v5, :cond_11

    sget-object p1, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Pre-process consumed event"

    invoke-virtual {p1, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_f
    return-void

    :cond_10
    instance-of v2, v3, Lorg/apache/poi/sun/awt/WindowClosingListener;

    if-eqz v2, :cond_11

    move-object v2, v3

    check-cast v2, Lorg/apache/poi/sun/awt/WindowClosingListener;

    move-object v5, p1

    check-cast v5, Lorg/apache/poi/java/awt/event/WindowEvent;

    invoke-interface {v2, v5}, Lorg/apache/poi/sun/awt/WindowClosingListener;->windowClosingNotify(Lorg/apache/poi/java/awt/event/WindowEvent;)Ljava/lang/RuntimeException;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkWindowClosingException()Z

    move-result v2

    if-eqz v2, :cond_11

    return-void

    :cond_11
    :goto_1
    iget-boolean v2, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z

    if-eqz v2, :cond_12

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    goto :goto_2

    :cond_12
    if-ne v0, v1, :cond_13

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/java/awt/event/MouseWheelEvent;

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Component;->autoProcessMouseWheel(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)V

    goto :goto_2

    :cond_13
    instance-of v1, p1, Lorg/apache/poi/java/awt/event/MouseEvent;

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->postsOldMouseEvents()Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_14
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->convertToOld()Lorg/apache/poi/java/awt/Event;

    move-result-object v1

    if-eqz v1, :cond_17

    iget v2, v1, Lorg/apache/poi/java/awt/Event;->key:I

    iget v5, v1, Lorg/apache/poi/java/awt/Event;->modifiers:I

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Component;->postEvent(Lorg/apache/poi/java/awt/Event;)Z

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Event;->isConsumed()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->consume()V

    :cond_15
    iget v6, v1, Lorg/apache/poi/java/awt/Event;->id:I

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget v6, v1, Lorg/apache/poi/java/awt/Event;->key:I

    if-eq v6, v2, :cond_16

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/java/awt/event/KeyEvent;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Event;->getKeyEventChar()C

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/poi/java/awt/event/KeyEvent;->setKeyChar(C)V

    :cond_16
    iget v1, v1, Lorg/apache/poi/java/awt/Event;->modifiers:I

    if-eq v1, v5, :cond_17

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/java/awt/event/KeyEvent;

    invoke-virtual {v2, v1}, Lorg/apache/poi/java/awt/event/KeyEvent;->setModifiers(I)V

    :cond_17
    :goto_2
    if-ne v0, v4, :cond_18

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_18

    instance-of v0, v3, Lorg/apache/poi/sun/awt/WindowClosingListener;

    if-eqz v0, :cond_18

    check-cast v3, Lorg/apache/poi/sun/awt/WindowClosingListener;

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowEvent;

    invoke-interface {v3, v0}, Lorg/apache/poi/sun/awt/WindowClosingListener;->windowClosingDelivered(Lorg/apache/poi/java/awt/event/WindowEvent;)Ljava/lang/RuntimeException;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkWindowClosingException()Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    :cond_18
    instance-of v0, p1, Lorg/apache/poi/java/awt/event/KeyEvent;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, p1, Lorg/apache/poi/java/awt/event/FocusEvent;

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_19

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v1, :cond_1a

    :cond_19
    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Component;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getNativeContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    :cond_1a
    if-eqz v0, :cond_1b

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->handleEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_1b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchMouseWheelToAncestor(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)Z
    .locals 22

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/Component;->getX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/Component;->getY()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lorg/apache/poi/java/awt/Component;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "dispatchMouseWheelToAncestor"

    invoke-virtual {v3, v5}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orig event src is of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getSource()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object v5

    move-object v15, v5

    :goto_0
    if-eqz v15, :cond_1

    invoke-virtual {v15, v0}, Lorg/apache/poi/java/awt/Container;->eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v15}, Lorg/apache/poi/java/awt/Component;->getX()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v15}, Lorg/apache/poi/java/awt/Component;->getY()I

    move-result v5

    add-int/2addr v2, v5

    instance-of v5, v15, Lorg/apache/poi/java/awt/Window;

    if-nez v5, :cond_1

    invoke-virtual {v15}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object v15

    goto :goto_0

    :cond_1
    move v11, v1

    move v12, v2

    sget-object v1, Lorg/apache/poi/java/awt/Component;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v1, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new event src is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_2
    if-eqz v15, :cond_4

    invoke-virtual {v15, v0}, Lorg/apache/poi/java/awt/Container;->eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lorg/apache/poi/java/awt/event/MouseWheelEvent;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getID()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getWhen()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getModifiers()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getXOnScreen()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getYOnScreen()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getClickCount()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->isPopupTrigger()Z

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getScrollType()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getScrollAmount()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getWheelRotation()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getPreciseWheelRotation()D

    move-result-wide v20

    move-object v5, v1

    move-object v6, v15

    move-object v4, v15

    move v15, v2

    invoke-direct/range {v5 .. v21}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;-><init>(Lorg/apache/poi/java/awt/Component;IJIIIIIIZIIID)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/AWTEvent;->copyPrivateDataInto(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-virtual {v4, v1}, Lorg/apache/poi/java/awt/Container;->dispatchEventToSelf(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->consume()V

    :cond_3
    const/4 v0, 0x1

    monitor-exit v3

    return v0

    :cond_4
    monitor-exit v3

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doLayout()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->layout()V

    return-void
.end method

.method public enable()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->enabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->enabled:Z

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setEnabled(Z)V

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->updateCursorImmediately()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-eqz v0, :cond_1

    const-string v1, "AccessibleState"

    const/4 v2, 0x0

    sget-object v3, Ljavax/accessibility/AccessibleState;->ENABLED:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/accessibility/AccessibleContext;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public enable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->enable()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->disable()V

    :goto_0
    return-void
.end method

.method public final enableEvents(J)V
    .locals 8

    monitor-enter p0

    const-wide/32 v0, 0x8000

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/Component;->hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-wide v0, v4

    :goto_0
    const-wide/32 v2, 0x10000

    and-long v6, p1, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/apache/poi/java/awt/Component;->hierarchyBoundsListener:Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    if-nez v6, :cond_1

    iget-wide v6, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-nez v6, :cond_1

    or-long/2addr v0, v2

    :cond_1
    iget-wide v2, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    or-long/2addr p1, v2

    iput-wide p1, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v3, v3, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v3, p1, p2}, Lorg/apache/poi/java/awt/Container;->proxyEnableEvents(J)V

    :cond_2
    cmp-long p1, v0, v4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/java/awt/Component;->adjustListeningChildrenOnParent(JI)V

    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_3
    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public enableInputMethods(Z)V
    .locals 6

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1000

    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    if-eqz p1, :cond_2

    and-long/2addr v4, v2

    cmp-long p1, v4, v0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isFocusOwner()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getInputContext()Lorg/apache/poi/java/awt/im/InputContext;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lorg/apache/poi/java/awt/event/FocusEvent;

    const/16 v1, 0x3ec

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/java/awt/event/FocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;I)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/im/InputContext;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_1
    iget-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    or-long/2addr v0, v2

    goto :goto_0

    :cond_2
    and-long/2addr v2, v4

    cmp-long p1, v2, v0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getInputContext()Lorg/apache/poi/java/awt/im/InputContext;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/im/InputContext;->endComposition()V

    invoke-virtual {p1, p0}, Lorg/apache/poi/java/awt/im/InputContext;->removeNotify(Lorg/apache/poi/java/awt/Component;)V

    :cond_3
    iget-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v2, -0x1001

    and-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    return-void
.end method

.method public eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 0

    iget p1, p1, Lorg/apache/poi/java/awt/AWTEvent;->id:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->eventTypeEnabled(I)Z

    move-result p1

    return p1
.end method

.method public eventTypeEnabled(I)Z
    .locals 8

    const/16 v0, 0x259

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_e

    const/16 v0, 0x2bd

    if-eq p1, v0, :cond_d

    const/16 v0, 0x384

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_b

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_9

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_9

    const/16 v0, 0x44c

    if-eq p1, v0, :cond_7

    const/16 v0, 0x44d

    if-eq p1, v0, :cond_7

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_0
    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/32 v6, 0x10000

    and-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->hierarchyBoundsListener:Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    if-eqz v0, :cond_f

    :cond_0
    return v3

    :pswitch_1
    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/32 v6, 0x8000

    and-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

    if-eqz v0, :cond_f

    :cond_1
    return v3

    :pswitch_2
    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/32 v6, 0x20000

    and-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseWheelListener:Lorg/apache/poi/java/awt/event/MouseWheelListener;

    if-eqz v0, :cond_f

    :cond_2
    return v3

    :pswitch_3
    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

    if-eqz v0, :cond_f

    :cond_3
    return v3

    :pswitch_4
    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

    if-eqz v0, :cond_f

    :cond_4
    return v3

    :pswitch_5
    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->keyListener:Lorg/apache/poi/java/awt/event/KeyListener;

    if-eqz v0, :cond_f

    :cond_5
    return v3

    :pswitch_6
    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->componentListener:Lorg/apache/poi/java/awt/event/ComponentListener;

    if-eqz v0, :cond_f

    :cond_6
    return v3

    :cond_7
    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v6, 0x800

    and-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->inputMethodListener:Lorg/apache/poi/java/awt/event/InputMethodListener;

    if-eqz v0, :cond_f

    :cond_8
    return v3

    :cond_9
    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->focusListener:Lorg/apache/poi/java/awt/event/FocusListener;

    if-eqz v0, :cond_f

    :cond_a
    return v3

    :cond_b
    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v6, 0x80

    and-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-eqz v0, :cond_f

    return v3

    :cond_c
    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v6, 0x400

    and-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-eqz v0, :cond_f

    return v3

    :cond_d
    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v6, 0x200

    and-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-eqz v0, :cond_f

    return v3

    :cond_e
    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v6, 0x100

    and-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-eqz v0, :cond_f

    return v3

    :cond_f
    :goto_0
    const/16 v0, 0x7cf

    if-le p1, v0, :cond_10

    return v3

    :cond_10
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x190
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x578
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public findUnderMouseInWindow(Lorg/apache/poi/java/awt/PointerInfo;)Lorg/apache/poi/java/awt/Component;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainingWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Toolkit;->getMouseInfoPeer()Lorg/apache/poi/java/awt/peer/MouseInfoPeer;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/poi/java/awt/peer/MouseInfoPeer;->isWindowUnderMouse(Lorg/apache/poi/java/awt/Window;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/PointerInfo;->getLocation()Lorg/apache/poi/java/awt/Point;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->pointRelativeToComponent(Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/Point;

    move-result-object p1

    iget v1, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/poi/java/awt/Container;->findComponentAt(IIZ)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    return-object p1
.end method

.method public firePropertyChange(Ljava/lang/String;BB)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;CC)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p2}, Ljava/lang/Character;-><init>(C)V

    new-instance p2, Ljava/lang/Character;

    invoke-direct {p2, p3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;DD)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_1

    cmpl-double v0, p2, p4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;FF)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_1

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;JJ)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_1

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public firePropertyChange(Ljava/lang/String;SS)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;ZZ)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getAccessControlContext()Ljava/security/AccessControlContext;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->acc:Ljava/security/AccessControlContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->acc:Ljava/security/AccessControlContext;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Component is missing AccessControlContext"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getAccessibleIndexInParent()I
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    instance-of v3, v1, Ljavax/accessibility/Accessible;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Container;->getComponents()[Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_2

    aget-object v5, v1, v3

    instance-of v5, v5, Ljavax/accessibility/Accessible;

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    aget-object v5, v1, v3

    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v0

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljavax/accessibility/AccessibleStateSet;

    invoke-direct {v1}, Ljavax/accessibility/AccessibleStateSet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljavax/accessibility/AccessibleState;->ENABLED:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v1, v2}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isFocusTraversable()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljavax/accessibility/AccessibleState;->FOCUSABLE:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v1, v2}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljavax/accessibility/AccessibleState;->VISIBLE:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v1, v2}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Ljavax/accessibility/AccessibleState;->SHOWING:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v1, v2}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isFocusOwner()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Ljavax/accessibility/AccessibleState;->FOCUSED:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v1, v2}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_4
    instance-of v2, p0, Ljavax/accessibility/Accessible;

    if-eqz v2, :cond_5

    move-object v2, p0

    check-cast v2, Ljavax/accessibility/Accessible;

    invoke-interface {v2}, Ljavax/accessibility/Accessible;->getAccessibleContext()Ljavax/accessibility/AccessibleContext;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljavax/accessibility/AccessibleContext;->getAccessibleParent()Ljavax/accessibility/Accessible;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljavax/accessibility/Accessible;->getAccessibleContext()Ljavax/accessibility/AccessibleContext;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljavax/accessibility/AccessibleContext;->getAccessibleSelection()Ljavax/accessibility/AccessibleSelection;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v4, Ljavax/accessibility/AccessibleState;->SELECTABLE:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v1, v4}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    invoke-virtual {v2}, Ljavax/accessibility/AccessibleContext;->getAccessibleIndexInParent()I

    move-result v2

    if-ltz v2, :cond_5

    invoke-interface {v3, v2}, Ljavax/accessibility/AccessibleSelection;->isAccessibleChildSelected(I)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Ljavax/accessibility/AccessibleState;->SELECTED:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v1, v2}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_5
    const-string v2, "javax.swing.JComponent"

    invoke-static {p0, v2}, Lorg/apache/poi/java/awt/Component;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, p0

    check-cast v2, Ljavax/swing/JComponent;

    invoke-virtual {v2}, Ljavax/swing/JComponent;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Ljavax/accessibility/AccessibleState;->OPAQUE:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v1, v2}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_6
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAlignmentX()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getAlignmentY()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getBackBuffer()Lorg/apache/poi/java/awt/Image;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->bufferStrategy:Lorg/apache/poi/java/awt/image/BufferStrategy;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->getBackBuffer()Lorg/apache/poi/java/awt/Image;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->getBackBuffer()Lorg/apache/poi/java/awt/Image;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackground()Lorg/apache/poi/java/awt/Color;
    .locals 1
    .annotation runtime Ljava/beans/Transient;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->background:Lorg/apache/poi/java/awt/Color;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getBackground()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBaseline(II)I
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBaselineResizeBehavior()Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->OTHER:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    return-object v0
.end method

.method public getBounds()Lorg/apache/poi/java/awt/Rectangle;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->bounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/Rectangle;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/poi/java/awt/Rectangle;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getX()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getY()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getHeight()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getX()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getY()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/apache/poi/java/awt/Rectangle;->setBounds(IIII)V

    return-object p1
.end method

.method public getBoundsOp()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->boundsOp:I

    return v0
.end method

.method public getBufferStrategy()Lorg/apache/poi/java/awt/image/BufferStrategy;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->bufferStrategy:Lorg/apache/poi/java/awt/image/BufferStrategy;

    return-object v0
.end method

.method public getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGBdefault()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Toolkit;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    return-object v0
.end method

.method public getComponentAt(II)Lorg/apache/poi/java/awt/Component;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->locate(II)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    return-object p1
.end method

.method public getComponentAt(Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/Component;
    .locals 1

    iget v0, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/java/awt/Component;->getComponentAt(II)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getComponentListeners()[Lorg/apache/poi/java/awt/event/ComponentListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/ComponentListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/ComponentListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/ComponentListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getComponentOrientation()Lorg/apache/poi/java/awt/ComponentOrientation;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->componentOrientation:Lorg/apache/poi/java/awt/ComponentOrientation;

    return-object v0
.end method

.method public getContainer()Lorg/apache/poi/java/awt/Container;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    return-object v0
.end method

.method public getContainingWindow()Lorg/apache/poi/java/awt/Window;
    .locals 1

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->getContainingWindow(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    return-object v0
.end method

.method public getCursor()Lorg/apache/poi/java/awt/Cursor;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getCursor_NoClientCode()Lorg/apache/poi/java/awt/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final getCursor_NoClientCode()Lorg/apache/poi/java/awt/Cursor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->cursor:Lorg/apache/poi/java/awt/Cursor;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getCursor_NoClientCode()Lorg/apache/poi/java/awt/Cursor;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/poi/java/awt/Cursor;->getPredefinedCursor(I)Lorg/apache/poi/java/awt/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDropTarget()Lorg/apache/poi/java/awt/dnd/DropTarget;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->dropTarget:Lorg/apache/poi/java/awt/dnd/DropTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFocusCycleRootAncestor()Lorg/apache/poi/java/awt/Container;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getFocusListeners()[Lorg/apache/poi/java/awt/event/FocusListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/FocusListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/FocusListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/FocusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFocusTraversalKeys(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lorg/apache/poi/java/awt/AWTKeyStroke;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->getFocusTraversalKeys_NoIDCheck(I)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid focus traversal key identifier"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFocusTraversalKeysEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeysEnabled:Z

    return v0
.end method

.method public final getFocusTraversalKeys_NoIDCheck(I)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeys:[Ljava/util/Set;

    if-eqz v0, :cond_0

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalKeys(I)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getDefaultFocusTraversalKeys(I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getFont()Lorg/apache/poi/java/awt/Font;
    .locals 1
    .annotation runtime Ljava/beans/Transient;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getFont_NoClientCode()Lorg/apache/poi/java/awt/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFontMetrics(Lorg/apache/poi/java/awt/Font;)Lorg/apache/poi/java/awt/FontMetrics;
    .locals 2

    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object v0

    instance-of v1, v0, Lsun/font/SunFontManager;

    if-eqz v1, :cond_0

    check-cast v0, Lsun/font/SunFontManager;

    invoke-virtual {v0}, Lsun/font/SunFontManager;->usePlatformFontMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->getFontMetrics(Lorg/apache/poi/java/awt/Font;)Lorg/apache/poi/java/awt/FontMetrics;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lsun/font/FontDesignMetrics;->getMetrics(Lorg/apache/poi/java/awt/Font;)Lsun/font/FontDesignMetrics;

    move-result-object p1

    return-object p1
.end method

.method public final getFont_NoClientCode()Lorg/apache/poi/java/awt/Font;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->font:Lorg/apache/poi/java/awt/Font;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getFont_NoClientCode()Lorg/apache/poi/java/awt/Font;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getForeground()Lorg/apache/poi/java/awt/Color;
    .locals 1
    .annotation runtime Ljava/beans/Transient;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->foreground:Lorg/apache/poi/java/awt/Color;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getForeground()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getGraphics()Lorg/apache/poi/java/awt/Graphics;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getGraphics()Lorg/apache/poi/java/awt/Graphics;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    instance-of v1, v0, Lorg/apache/poi/sun/awt/ConstrainableGraphics;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/sun/awt/ConstrainableGraphics;

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->x:I

    iget v3, p0, Lorg/apache/poi/java/awt/Component;->y:I

    iget v4, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v5, p0, Lorg/apache/poi/java/awt/Component;->height:I

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/poi/sun/awt/ConstrainableGraphics;->constrain(IIII)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/apache/poi/java/awt/Component;->x:I

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/java/awt/Graphics;->translate(II)V

    iget v1, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->height:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/apache/poi/java/awt/Graphics;->setClip(IIII)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getFont()Lorg/apache/poi/java/awt/Font;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Graphics;->setFont(Lorg/apache/poi/java/awt/Font;)V

    return-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->getGraphics()Lorg/apache/poi/java/awt/Graphics;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public getGraphicsConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration_NoClientCode()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getGraphicsConfiguration_NoClientCode()Lorg/apache/poi/java/awt/GraphicsConfiguration;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->graphicsConfig:Lorg/apache/poi/java/awt/GraphicsConfiguration;

    return-object v0
.end method

.method public final getGraphics_NoClientCode()Lorg/apache/poi/java/awt/Graphics;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getGraphics_NoClientCode()Lorg/apache/poi/java/awt/Graphics;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    instance-of v1, v0, Lorg/apache/poi/sun/awt/ConstrainableGraphics;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/sun/awt/ConstrainableGraphics;

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->x:I

    iget v3, p0, Lorg/apache/poi/java/awt/Component;->y:I

    iget v4, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v5, p0, Lorg/apache/poi/java/awt/Component;->height:I

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/poi/sun/awt/ConstrainableGraphics;->constrain(IIII)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/apache/poi/java/awt/Component;->x:I

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/java/awt/Graphics;->translate(II)V

    iget v1, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->height:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/apache/poi/java/awt/Graphics;->setClip(IIII)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getFont_NoClientCode()Lorg/apache/poi/java/awt/Font;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Graphics;->setFont(Lorg/apache/poi/java/awt/Font;)V

    return-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->getGraphics()Lorg/apache/poi/java/awt/Graphics;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public final getHWPeerAboveMe()Lorg/apache/poi/java/awt/peer/ComponentPeer;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getSiblingIndexAbove()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_3

    :goto_1
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getSiblingIndexAbove()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->height:I

    return v0
.end method

.method public declared-synchronized getHierarchyBoundsListeners()[Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHierarchyListeners()[Lorg/apache/poi/java/awt/event/HierarchyListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/HierarchyListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/HierarchyListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/HierarchyListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIgnoreRepaint()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->ignoreRepaint:Z

    return v0
.end method

.method public getInputContext()Lorg/apache/poi/java/awt/im/InputContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getInputContext()Lorg/apache/poi/java/awt/im/InputContext;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getInputMethodListeners()[Lorg/apache/poi/java/awt/event/InputMethodListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/InputMethodListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/InputMethodListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/InputMethodListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInputMethodRequests()Lorg/apache/poi/java/awt/im/InputMethodRequests;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getKeyListeners()[Lorg/apache/poi/java/awt/event/KeyListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/KeyListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/KeyListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/KeyListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const-class v0, Lorg/apache/poi/java/awt/event/ComponentListener;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->componentListener:Lorg/apache/poi/java/awt/event/ComponentListener;

    goto :goto_0

    :cond_0
    const-class v0, Lorg/apache/poi/java/awt/event/FocusListener;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->focusListener:Lorg/apache/poi/java/awt/event/FocusListener;

    goto :goto_0

    :cond_1
    const-class v0, Lorg/apache/poi/java/awt/event/HierarchyListener;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

    goto :goto_0

    :cond_2
    const-class v0, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->hierarchyBoundsListener:Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    goto :goto_0

    :cond_3
    const-class v0, Lorg/apache/poi/java/awt/event/KeyListener;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->keyListener:Lorg/apache/poi/java/awt/event/KeyListener;

    goto :goto_0

    :cond_4
    const-class v0, Lorg/apache/poi/java/awt/event/MouseListener;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

    goto :goto_0

    :cond_5
    const-class v0, Lorg/apache/poi/java/awt/event/MouseMotionListener;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

    goto :goto_0

    :cond_6
    const-class v0, Lorg/apache/poi/java/awt/event/MouseWheelListener;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseWheelListener:Lorg/apache/poi/java/awt/event/MouseWheelListener;

    goto :goto_0

    :cond_7
    const-class v0, Lorg/apache/poi/java/awt/event/InputMethodListener;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->inputMethodListener:Lorg/apache/poi/java/awt/event/InputMethodListener;

    goto :goto_0

    :cond_8
    const-class v0, Ljava/beans/PropertyChangeListener;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "This component must have a parent in order to determine its locale"

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocation()Lorg/apache/poi/java/awt/Point;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->location()Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/Point;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/poi/java/awt/Point;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getX()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getY()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getX()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/java/awt/Point;->setLocation(II)V

    return-object p1
.end method

.method public getLocationOnScreen()Lorg/apache/poi/java/awt/Point;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getLocationOnScreen_NoTreeLock()Lorg/apache/poi/java/awt/Point;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getLocationOnScreen_NoTreeLock()Lorg/apache/poi/java/awt/Point;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getNativeContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    invoke-interface {v1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->getLocationOnScreen()Lorg/apache/poi/java/awt/Point;

    move-result-object v1

    move-object v2, p0

    :goto_0
    if-eq v2, v0, :cond_0

    iget v3, v1, Lorg/apache/poi/java/awt/Point;->x:I

    iget v4, v2, Lorg/apache/poi/java/awt/Component;->x:I

    add-int/2addr v3, v4

    iput v3, v1, Lorg/apache/poi/java/awt/Point;->x:I

    iget v3, v1, Lorg/apache/poi/java/awt/Point;->y:I

    iget v4, v2, Lorg/apache/poi/java/awt/Component;->y:I

    add-int/2addr v3, v4

    iput v3, v1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->getLocationOnScreen()Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "component must be showing on the screen to determine its location"

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocationOnWindow()Lorg/apache/poi/java/awt/Point;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getLocation()Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/apache/poi/java/awt/Window;

    if-nez v2, :cond_0

    iget v2, v0, Lorg/apache/poi/java/awt/Point;->x:I

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getX()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lorg/apache/poi/java/awt/Point;->x:I

    iget v2, v0, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getY()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMaximumSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isMaximumSizeSet()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/Dimension;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->maxSize:Lorg/apache/poi/java/awt/Dimension;

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/Dimension;-><init>(Lorg/apache/poi/java/awt/Dimension;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/Dimension;

    const/16 v1, 0x7fff

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getMinimumSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->minimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getMouseListeners()[Lorg/apache/poi/java/awt/event/MouseListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/MouseListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/MouseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMouseMotionListeners()[Lorg/apache/poi/java/awt/event/MouseMotionListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/MouseMotionListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/MouseMotionListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/MouseMotionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMousePosition()Lorg/apache/poi/java/awt/Point;
    .locals 4

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/poi/java/awt/Component$2;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Component$2;-><init>(Lorg/apache/poi/java/awt/Component;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/PointerInfo;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->findUnderMouseInWindow(Lorg/apache/poi/java/awt/PointerInfo;)Lorg/apache/poi/java/awt/Component;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/java/awt/Component;->isSameOrAncestorOf(Lorg/apache/poi/java/awt/Component;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/PointerInfo;->getLocation()Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->pointRelativeToComponent(Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/poi/java/awt/HeadlessException;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/HeadlessException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getMouseWheelListeners()[Lorg/apache/poi/java/awt/event/MouseWheelListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/MouseWheelListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/MouseWheelListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/MouseWheelListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->nameExplicitlySet:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->nameExplicitlySet:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->constructComponentName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->name:Ljava/lang/String;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeContainer()Lorg/apache/poi/java/awt/Container;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v1, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getParent_NoClientCode()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getNextFocusCandidate()Lorg/apache/poi/java/awt/Component;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final getNormalShape()Lorg/apache/poi/sun/java2d/pipe/Region;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getLocationOnWindow()Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    iget v1, v0, Lorg/apache/poi/java/awt/Point;->x:I

    iget v0, v0, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getHeight()I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lorg/apache/poi/sun/java2d/pipe/Region;->getInstanceXYWH(IIII)Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v0

    return-object v0
.end method

.method public getObjectLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->objectLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getOpaqueShape()Lorg/apache/poi/sun/java2d/pipe/Region;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mixingCutoutRegion:Lorg/apache/poi/sun/java2d/pipe/Region;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getNormalShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/java/awt/Container;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getParent_NoClientCode()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    return-object v0
.end method

.method public final getParent_NoClientCode()Lorg/apache/poi/java/awt/Container;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    return-object v0
.end method

.method public getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    return-object v0
.end method

.method public getPreferredSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->preferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/beans/PropertyChangeListener;

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/beans/PropertyChangeListener;

    monitor-exit v0

    return-object p1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getSiblingIndexAbove()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p0}, Lorg/apache/poi/java/awt/Container;->getComponentZOrder(Lorg/apache/poi/java/awt/Component;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method public final getSiblingIndexBelow()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p0}, Lorg/apache/poi/java/awt/Container;->getComponentZOrder(Lorg/apache/poi/java/awt/Component;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v0

    if-lt v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public getSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->size()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getSize(Lorg/apache/poi/java/awt/Dimension;)Lorg/apache/poi/java/awt/Dimension;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/poi/java/awt/Dimension;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/java/awt/Dimension;->setSize(II)V

    return-object p1
.end method

.method public getToolkit()Lorg/apache/poi/java/awt/Toolkit;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getToolkitImpl()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    return-object v0
.end method

.method public final getToolkitImpl()Lorg/apache/poi/java/awt/Toolkit;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getToolkitImpl()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    return-object v0
.end method

.method public getTraversalRoot()Lorg/apache/poi/java/awt/Container;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getFocusCycleRootAncestor()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    return-object v0
.end method

.method public final getTreeLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Component;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->y:I

    return v0
.end method

.method public gotFocus(Lorg/apache/poi/java/awt/Event;Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public handleEvent(Lorg/apache/poi/java/awt/Event;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p1, Lorg/apache/poi/java/awt/Event;->id:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :pswitch_0
    iget v0, p1, Lorg/apache/poi/java/awt/Event;->x:I

    iget v1, p1, Lorg/apache/poi/java/awt/Event;->y:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/Component;->mouseDrag(Lorg/apache/poi/java/awt/Event;II)Z

    move-result p1

    return p1

    :pswitch_1
    iget v0, p1, Lorg/apache/poi/java/awt/Event;->x:I

    iget v1, p1, Lorg/apache/poi/java/awt/Event;->y:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/Component;->mouseExit(Lorg/apache/poi/java/awt/Event;II)Z

    move-result p1

    return p1

    :pswitch_2
    iget v0, p1, Lorg/apache/poi/java/awt/Event;->x:I

    iget v1, p1, Lorg/apache/poi/java/awt/Event;->y:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/Component;->mouseEnter(Lorg/apache/poi/java/awt/Event;II)Z

    move-result p1

    return p1

    :pswitch_3
    iget v0, p1, Lorg/apache/poi/java/awt/Event;->x:I

    iget v1, p1, Lorg/apache/poi/java/awt/Event;->y:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/Component;->mouseMove(Lorg/apache/poi/java/awt/Event;II)Z

    move-result p1

    return p1

    :pswitch_4
    iget v0, p1, Lorg/apache/poi/java/awt/Event;->x:I

    iget v1, p1, Lorg/apache/poi/java/awt/Event;->y:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/Component;->mouseUp(Lorg/apache/poi/java/awt/Event;II)Z

    move-result p1

    return p1

    :pswitch_5
    iget v0, p1, Lorg/apache/poi/java/awt/Event;->x:I

    iget v1, p1, Lorg/apache/poi/java/awt/Event;->y:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/Component;->mouseDown(Lorg/apache/poi/java/awt/Event;II)Z

    move-result p1

    return p1

    :pswitch_6
    iget v0, p1, Lorg/apache/poi/java/awt/Event;->key:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/Component;->keyUp(Lorg/apache/poi/java/awt/Event;I)Z

    move-result p1

    return p1

    :pswitch_7
    iget v0, p1, Lorg/apache/poi/java/awt/Event;->key:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/Component;->keyDown(Lorg/apache/poi/java/awt/Event;I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p1, Lorg/apache/poi/java/awt/Event;->arg:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/Component;->lostFocus(Lorg/apache/poi/java/awt/Event;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p1, Lorg/apache/poi/java/awt/Event;->arg:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/Component;->gotFocus(Lorg/apache/poi/java/awt/Event;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    iget-object v0, p1, Lorg/apache/poi/java/awt/Event;->arg:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/Component;->action(Lorg/apache/poi/java/awt/Event;Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasFocus()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hide()V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->isPacked:Z

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->clearCurrentFocusCycleRootOnHide()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->clearMostRecentFocusOwnerOnHide()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Component;->mixOnHiding(Z)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->containsFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->isAutoFocusTransferEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Component;->transferFocus(Z)Z

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setVisible(Z)V

    const/16 v4, 0x578

    iget-object v6, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    const-wide/16 v7, 0x4

    const-wide/32 v9, 0x8000

    invoke-static {v9, v10}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v9

    move-object v3, p0

    move-object v5, p0

    invoke-virtual/range {v3 .. v9}, Lorg/apache/poi/java/awt/Component;->createHierarchyEvents(ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;JZ)I

    instance-of v0, v2, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->repaint()V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->updateCursorImmediately()V

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->componentListener:Lorg/apache/poi/java/awt/event/ComponentListener;

    if-nez v0, :cond_3

    iget-wide v2, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    invoke-static {v4, v5}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lorg/apache/poi/java/awt/event/ComponentEvent;

    const/16 v2, 0x67

    invoke-direct {v0, p0, v2}, Lorg/apache/poi/java/awt/event/ComponentEvent;-><init>(Lorg/apache/poi/java/awt/Component;I)V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->invalidate()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_0
    return-void
.end method

.method public imageUpdate(Lorg/apache/poi/java/awt/Image;IIIII)Z
    .locals 7

    and-int/lit8 p1, p2, 0x30

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    :goto_0
    move p1, p3

    goto :goto_1

    :cond_0
    and-int/lit8 p1, p2, 0x8

    if-eqz p1, :cond_1

    sget-boolean p1, Lorg/apache/poi/java/awt/Component;->isInc:Z

    if-eqz p1, :cond_1

    sget p1, Lorg/apache/poi/java/awt/Component;->incRate:I

    if-gez p1, :cond_2

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :cond_2
    :goto_1
    if-ltz p1, :cond_3

    int-to-long v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v6, p0, Lorg/apache/poi/java/awt/Component;->height:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/java/awt/Component;->repaint(JIIII)V

    :cond_3
    and-int/lit16 p1, p2, 0xa0

    if-nez p1, :cond_4

    const/4 p3, 0x1

    :cond_4
    return p3
.end method

.method public initializeFocusTraversalKeys()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Set;

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeys:[Ljava/util/Set;

    return-void
.end method

.method public inside(II)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->width:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget p1, p0, Lorg/apache/poi/java/awt/Component;->height:I

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public invalidate()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->valid:Z

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isPreferredSizeSet()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-object v2, p0, Lorg/apache/poi/java/awt/Component;->prefSize:Lorg/apache/poi/java/awt/Dimension;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isMinimumSizeSet()Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v2, p0, Lorg/apache/poi/java/awt/Component;->minSize:Lorg/apache/poi/java/awt/Dimension;

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isMaximumSizeSet()Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v2, p0, Lorg/apache/poi/java/awt/Component;->maxSize:Lorg/apache/poi/java/awt/Dimension;

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateParent()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final invalidateIfValid()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidateParent()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    :cond_0
    return-void
.end method

.method public isAutoFocusTransferOnDisposal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->autoFocusTransferOnDisposal:Z

    return v0
.end method

.method public isBackgroundSet()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->background:Lorg/apache/poi/java/awt/Color;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCoalescingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->coalescingEnabled:Z

    return v0
.end method

.method public isCursorSet()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->cursor:Lorg/apache/poi/java/awt/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisplayable()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDoubleBuffered()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isEnabledImpl()Z

    move-result v0

    return v0
.end method

.method public final isEnabledImpl()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->enabled:Z

    return v0
.end method

.method public isFocusCycleRoot(Lorg/apache/poi/java/awt/Container;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getFocusCycleRootAncestor()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFocusOwner()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public isFocusTraversable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->isFocusTraversableOverridden:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/Component;->isFocusTraversableOverridden:I

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->focusable:Z

    return v0
.end method

.method public final isFocusTraversableOverridden()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->isFocusTraversableOverridden:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFocusable()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isFocusTraversable()Z

    move-result v0

    return v0
.end method

.method public isFontSet()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->font:Lorg/apache/poi/java/awt/Font;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForegroundSet()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->foreground:Lorg/apache/poi/java/awt/Color;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLightweight()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    return v0
.end method

.method public isMaximumSizeSet()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->maxSizeSet:Z

    return v0
.end method

.method public isMinimumSizeSet()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->minSizeSet:Z

    return v0
.end method

.method public final isMixingNeeded()Z
    .locals 5

    invoke-static {}, Lorg/apache/poi/sun/awt/SunToolkit;->getSunAwtDisableMixing()Z

    move-result v0

    const-string/jumbo v1, "this = "

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v3, 0x12c

    invoke-virtual {v0, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; Mixing disabled via sun.awt.disableMixing"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->areBoundsValid()Z

    move-result v0

    const/16 v3, 0x1f4

    if-nez v0, :cond_3

    sget-object v0, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v0, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; areBoundsValid = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->areBoundsValid()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainingWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->hasHeavyweightDescendants()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->hasLightweightDescendants()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Window;->isDisposing()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    sget-object v1, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v1, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containing window = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; has h/w descendants = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->hasHeavyweightDescendants()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; has l/w descendants = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->hasLightweightDescendants()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; disposing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Window;->isDisposing()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_6
    return v2

    :cond_7
    sget-object v0, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v0, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; containing window is null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_8
    return v2
.end method

.method public final isNonOpaqueForMixing()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mixingCutoutRegion:Lorg/apache/poi/sun/java2d/pipe/Region;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/sun/java2d/pipe/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpaque()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPreferredSizeSet()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->prefSizeSet:Z

    return v0
.end method

.method public isRecursivelyVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isRecursivelyVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameOrAncestorOf(Lorg/apache/poi/java/awt/Component;Z)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isShowing()Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->valid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation runtime Ljava/beans/Transient;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible_NoClientCode()Z

    move-result v0

    return v0
.end method

.method public final isVisible_NoClientCode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    return v0
.end method

.method public keyDown(Lorg/apache/poi/java/awt/Event;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public keyUp(Lorg/apache/poi/java/awt/Event;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public layout()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public lightweightPaint(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->paint(Lorg/apache/poi/java/awt/Graphics;)V

    return-void
.end method

.method public lightweightPrint(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->print(Lorg/apache/poi/java/awt/Graphics;)V

    return-void
.end method

.method public list()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/java/awt/Component;->list(Ljava/io/PrintStream;I)V

    return-void
.end method

.method public list(Ljava/io/PrintStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/Component;->list(Ljava/io/PrintStream;I)V

    return-void
.end method

.method public list(Ljava/io/PrintStream;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/Component;->list(Ljava/io/PrintWriter;I)V

    return-void
.end method

.method public list(Ljava/io/PrintWriter;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public locate(II)Lorg/apache/poi/java/awt/Component;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public location()Lorg/apache/poi/java/awt/Point;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;->location_NoClientCode()Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    return-object v0
.end method

.method public lostFocus(Lorg/apache/poi/java/awt/Event;Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public minimumSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->minSize:Lorg/apache/poi/java/awt/Dimension;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isMinimumSizeSet()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->getMinimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->size()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->minSize:Lorg/apache/poi/java/awt/Dimension;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :cond_2
    new-instance v1, Lorg/apache/poi/java/awt/Dimension;

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/Dimension;-><init>(Lorg/apache/poi/java/awt/Dimension;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public mixOnHiding(Z)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; isLightweight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isMixingNeeded()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;->applyCurrentShapeBelowMe()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public mixOnReshaping()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isMixingNeeded()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;->applyCurrentShapeBelowMe()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->applyCurrentShape()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mixOnShowing()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isMixingNeeded()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->subtractAndApplyShapeBelowMe()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->applyCurrentShape()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mixOnValidating()V
    .locals 0

    return-void
.end method

.method public mixOnZOrderChanging(II)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-ge p2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; oldZorder="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; newZorder="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; parent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isMixingNeeded()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getOpaqueShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getSiblingIndexBelow()I

    move-result v1

    invoke-virtual {v2, p2, v1, p1}, Lorg/apache/poi/java/awt/Container;->recursiveSubtractAndApplyShape(Lorg/apache/poi/sun/java2d/pipe/Region;II)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_8

    invoke-virtual {v2, p1, p2}, Lorg/apache/poi/java/awt/Container;->recursiveApplyCurrentShape(II)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->applyCurrentShape()V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_8

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;->getAppliedShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v1

    :goto_1
    if-ge p1, p2, :cond_7

    invoke-virtual {v2, p1}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getOpaqueShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/sun/java2d/pipe/Region;->getDifference(Lorg/apache/poi/sun/java2d/pipe/Region;)Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Component;->applyCompoundShape(Lorg/apache/poi/sun/java2d/pipe/Region;)V

    :cond_8
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public mouseDown(Lorg/apache/poi/java/awt/Event;II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public mouseDrag(Lorg/apache/poi/java/awt/Event;II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public mouseEnter(Lorg/apache/poi/java/awt/Event;II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public mouseExit(Lorg/apache/poi/java/awt/Event;II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public mouseMove(Lorg/apache/poi/java/awt/Event;II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public mouseUp(Lorg/apache/poi/java/awt/Event;II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public move(II)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Component;->setBoundsOp(I)V

    iget v1, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->height:I

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/poi/java/awt/Component;->setBounds(IIII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public nextFocus()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->transferFocus(Z)Z

    return-void
.end method

.method public numListening(J)I
    .locals 8

    sget-object v0, Lorg/apache/poi/java/awt/Component;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    const-wide/32 v2, 0x10000

    const-wide/32 v4, 0x8000

    if-eqz v1, :cond_0

    cmp-long v1, p1, v4

    if-eqz v1, :cond_0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    const-string v1, "Assertion failed"

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    cmp-long v0, p1, v4

    const-wide/16 v6, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    :cond_1
    cmp-long p1, p1, v2

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->hierarchyBoundsListener:Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    if-nez p1, :cond_2

    iget-wide p1, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr p1, v2

    cmp-long p1, p1, v6

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public paint(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 0

    return-void
.end method

.method public paintAll(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsCallback$PeerPaintCallback;->getInstance()Lorg/apache/poi/java/awt/GraphicsCallback$PeerPaintCallback;

    move-result-object v1

    new-instance v3, Lorg/apache/poi/java/awt/Rectangle;

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->height:I

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v0, v2}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Graphics;->getClip()Lorg/apache/poi/java/awt/Shape;

    move-result-object v5

    const/4 v6, 0x3

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/java/awt/GraphicsCallback$PeerPaintCallback;->runOneComponent(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Graphics;Lorg/apache/poi/java/awt/Shape;I)V

    :cond_0
    return-void
.end method

.method public paintHeavyweightComponents(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 0

    return-void
.end method

.method public paramString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->width:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",hidden"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->enabled:Z

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",disabled"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public pointRelativeToComponent(Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/Point;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getLocationOnScreen()Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/java/awt/Point;

    iget v2, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget v3, v0, Lorg/apache/poi/java/awt/Point;->x:I

    sub-int/2addr v2, v3

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    iget v0, v0, Lorg/apache/poi/java/awt/Point;->y:I

    sub-int/2addr p1, v0

    invoke-direct {v1, v2, p1}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    return-object v1
.end method

.method public postEvent(Lorg/apache/poi/java/awt/Event;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->handleEvent(Lorg/apache/poi/java/awt/Event;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Event;->consume()V

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    iget v2, p1, Lorg/apache/poi/java/awt/Event;->x:I

    iget v3, p1, Lorg/apache/poi/java/awt/Event;->y:I

    if-eqz v0, :cond_2

    iget v4, p0, Lorg/apache/poi/java/awt/Component;->x:I

    iget v5, p0, Lorg/apache/poi/java/awt/Component;->y:I

    invoke-virtual {p1, v4, v5}, Lorg/apache/poi/java/awt/Event;->translate(II)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->postEvent(Lorg/apache/poi/java/awt/Event;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Event;->consume()V

    return v1

    :cond_1
    iput v2, p1, Lorg/apache/poi/java/awt/Event;->x:I

    iput v3, p1, Lorg/apache/poi/java/awt/Event;->y:I

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public postsOldMouseEvents()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public preferredSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->prefSize:Lorg/apache/poi/java/awt/Dimension;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isPreferredSizeSet()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getMinimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->prefSize:Lorg/apache/poi/java/awt/Dimension;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :cond_2
    new-instance v1, Lorg/apache/poi/java/awt/Dimension;

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/Dimension;-><init>(Lorg/apache/poi/java/awt/Dimension;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public prepareImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Component;->prepareImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Toolkit;->prepareImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z

    move-result p1

    :goto_0
    return p1

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->prepareImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Toolkit;->prepareImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public prepareImage(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/java/awt/image/ImageObserver;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0, p2}, Lorg/apache/poi/java/awt/Component;->prepareImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z

    move-result p1

    return p1
.end method

.method public print(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->paint(Lorg/apache/poi/java/awt/Graphics;)V

    return-void
.end method

.method public printAll(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsCallback$PeerPrintCallback;->getInstance()Lorg/apache/poi/java/awt/GraphicsCallback$PeerPrintCallback;

    move-result-object v1

    new-instance v3, Lorg/apache/poi/java/awt/Rectangle;

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->height:I

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v0, v2}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Graphics;->getClip()Lorg/apache/poi/java/awt/Shape;

    move-result-object v5

    const/4 v6, 0x3

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/java/awt/GraphicsCallback$PeerPrintCallback;->runOneComponent(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Graphics;Lorg/apache/poi/java/awt/Shape;I)V

    :cond_0
    return-void
.end method

.method public printHeavyweightComponents(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 0

    return-void
.end method

.method public processComponentEvent(Lorg/apache/poi/java/awt/event/ComponentEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->componentListener:Lorg/apache/poi/java/awt/event/ComponentListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/ComponentEvent;->getID()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ComponentListener;->componentHidden(Lorg/apache/poi/java/awt/event/ComponentEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ComponentListener;->componentShown(Lorg/apache/poi/java/awt/event/ComponentEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ComponentListener;->componentResized(Lorg/apache/poi/java/awt/event/ComponentEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ComponentListener;->componentMoved(Lorg/apache/poi/java/awt/event/ComponentEvent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/event/FocusEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/event/FocusEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->processFocusEvent(Lorg/apache/poi/java/awt/event/FocusEvent;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/java/awt/event/MouseEvent;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lorg/apache/poi/java/awt/event/MouseWheelEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->processMouseWheelEvent(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Lorg/apache/poi/java/awt/event/MouseEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->processMouseMotionEvent(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Lorg/apache/poi/java/awt/event/MouseEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->processMouseEvent(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/java/awt/event/KeyEvent;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/poi/java/awt/event/KeyEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->processKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/java/awt/event/ComponentEvent;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/poi/java/awt/event/ComponentEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->processComponentEvent(Lorg/apache/poi/java/awt/event/ComponentEvent;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lorg/apache/poi/java/awt/event/InputMethodEvent;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/apache/poi/java/awt/event/InputMethodEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->processInputMethodEvent(Lorg/apache/poi/java/awt/event/InputMethodEvent;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/apache/poi/java/awt/event/HierarchyEvent;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    check-cast p1, Lorg/apache/poi/java/awt/event/HierarchyEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->processHierarchyBoundsEvent(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V

    goto :goto_0

    :pswitch_4
    check-cast p1, Lorg/apache/poi/java/awt/event/HierarchyEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->processHierarchyEvent(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x578
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public processFocusEvent(Lorg/apache/poi/java/awt/event/FocusEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->focusListener:Lorg/apache/poi/java/awt/event/FocusListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/FocusEvent;->getID()I

    move-result v1

    const/16 v2, 0x3ec

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3ed

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/FocusListener;->focusLost(Lorg/apache/poi/java/awt/event/FocusEvent;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/FocusListener;->focusGained(Lorg/apache/poi/java/awt/event/FocusEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public processHierarchyBoundsEvent(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->hierarchyBoundsListener:Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/HierarchyEvent;->getID()I

    move-result v1

    const/16 v2, 0x579

    if-eq v1, v2, :cond_1

    const/16 v2, 0x57a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;->ancestorResized(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;->ancestorMoved(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public processHierarchyEvent(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/HierarchyEvent;->getID()I

    move-result v1

    const/16 v2, 0x578

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/HierarchyListener;->hierarchyChanged(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public processInputMethodEvent(Lorg/apache/poi/java/awt/event/InputMethodEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->inputMethodListener:Lorg/apache/poi/java/awt/event/InputMethodListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/InputMethodEvent;->getID()I

    move-result v1

    const/16 v2, 0x44c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x44d

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/InputMethodListener;->caretPositionChanged(Lorg/apache/poi/java/awt/event/InputMethodEvent;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/InputMethodListener;->inputMethodTextChanged(Lorg/apache/poi/java/awt/event/InputMethodEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public processKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->keyListener:Lorg/apache/poi/java/awt/event/KeyListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getID()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/KeyListener;->keyReleased(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/KeyListener;->keyPressed(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/KeyListener;->keyTyped(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processMouseEvent(Lorg/apache/poi/java/awt/event/MouseEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseEvent;->getID()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mouseExited(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mouseEntered(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mouseReleased(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    goto :goto_0

    :pswitch_4
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mousePressed(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    goto :goto_0

    :pswitch_5
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mouseClicked(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public processMouseMotionEvent(Lorg/apache/poi/java/awt/event/MouseEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseEvent;->getID()I

    move-result v1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1fa

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseMotionListener;->mouseDragged(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseMotionListener;->mouseMoved(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public processMouseWheelEvent(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseWheelListener:Lorg/apache/poi/java/awt/event/MouseWheelListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->getID()I

    move-result v1

    const/16 v2, 0x1fb

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseWheelListener;->mouseWheelMoved(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final relocateComponent()V
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget v1, p0, Lorg/apache/poi/java/awt/Component;->x:I

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->y:I

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v3

    move v5, v1

    move v6, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v3, Lorg/apache/poi/java/awt/Component;->x:I

    add-int/2addr v5, v1

    iget v1, v3, Lorg/apache/poi/java/awt/Component;->y:I

    add-int/2addr v6, v1

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    iget v7, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v8, p0, Lorg/apache/poi/java/awt/Component;->height:I

    const/4 v9, 0x1

    invoke-interface/range {v4 .. v9}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setBounds(IIIII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Lorg/apache/poi/java/awt/MenuComponent;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->popups:Ljava/util/Vector;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    check-cast p1, Lorg/apache/poi/java/awt/PopupMenu;

    iget-object v2, p1, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Menu;->removeNotify()V

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->popups:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->popups:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_2

    iput-object v2, p0, Lorg/apache/poi/java/awt/Component;->popups:Ljava/util/Vector;

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeComponentListener(Lorg/apache/poi/java/awt/event/ComponentListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->componentListener:Lorg/apache/poi/java/awt/event/ComponentListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/ComponentListener;Lorg/apache/poi/java/awt/event/ComponentListener;)Lorg/apache/poi/java/awt/event/ComponentListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->componentListener:Lorg/apache/poi/java/awt/event/ComponentListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFocusListener(Lorg/apache/poi/java/awt/event/FocusListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->focusListener:Lorg/apache/poi/java/awt/event/FocusListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/FocusListener;Lorg/apache/poi/java/awt/event/FocusListener;)Lorg/apache/poi/java/awt/event/FocusListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->focusListener:Lorg/apache/poi/java/awt/event/FocusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeHierarchyBoundsListener(Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->hierarchyBoundsListener:Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    const/4 v1, 0x1

    const-wide/32 v2, 0x10000

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-wide v5, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr v5, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;)Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->hierarchyBoundsListener:Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    if-eqz v5, :cond_2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/poi/java/awt/Component;->adjustListeningChildrenOnParent(JI)V

    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public removeHierarchyListener(Lorg/apache/poi/java/awt/event/HierarchyListener;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

    const/4 v1, 0x1

    const-wide/32 v2, 0x8000

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-wide v5, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    and-long/2addr v5, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/HierarchyListener;Lorg/apache/poi/java/awt/event/HierarchyListener;)Lorg/apache/poi/java/awt/event/HierarchyListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

    if-eqz v5, :cond_2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/poi/java/awt/Component;->adjustListeningChildrenOnParent(JI)V

    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized removeInputMethodListener(Lorg/apache/poi/java/awt/event/InputMethodListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->inputMethodListener:Lorg/apache/poi/java/awt/event/InputMethodListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/InputMethodListener;Lorg/apache/poi/java/awt/event/InputMethodListener;)Lorg/apache/poi/java/awt/event/InputMethodListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->inputMethodListener:Lorg/apache/poi/java/awt/event/InputMethodListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeKeyListener(Lorg/apache/poi/java/awt/event/KeyListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->keyListener:Lorg/apache/poi/java/awt/event/KeyListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/KeyListener;Lorg/apache/poi/java/awt/event/KeyListener;)Lorg/apache/poi/java/awt/event/KeyListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->keyListener:Lorg/apache/poi/java/awt/event/KeyListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMouseListener(Lorg/apache/poi/java/awt/event/MouseListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/MouseListener;Lorg/apache/poi/java/awt/event/MouseListener;)Lorg/apache/poi/java/awt/event/MouseListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMouseMotionListener(Lorg/apache/poi/java/awt/event/MouseMotionListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/MouseMotionListener;Lorg/apache/poi/java/awt/event/MouseMotionListener;)Lorg/apache/poi/java/awt/event/MouseMotionListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMouseWheelListener(Lorg/apache/poi/java/awt/event/MouseWheelListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->mouseWheelListener:Lorg/apache/poi/java/awt/event/MouseWheelListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/MouseWheelListener;Lorg/apache/poi/java/awt/event/MouseWheelListener;)Lorg/apache/poi/java/awt/event/MouseWheelListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->mouseWheelListener:Lorg/apache/poi/java/awt/event/MouseWheelListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeNotify()V
    .locals 9

    invoke-static {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearMostRecentFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getPermanentFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalPermanentFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isFocusOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->isAutoFocusTransferEnabledFor(Lorg/apache/poi/java/awt/Component;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Component;->transferFocus(Z)Z

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/apache/poi/java/awt/Component;->isAddNotifyComplete:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/poi/java/awt/Container;->decreaseComponentCount(Lorg/apache/poi/java/awt/Component;)V

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/java/awt/Component;->popups:Ljava/util/Vector;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    iget-object v5, p0, Lorg/apache/poi/java/awt/Component;->popups:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/java/awt/PopupMenu;

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Menu;->removeNotify()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v6, 0x1000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getInputContext()Lorg/apache/poi/java/awt/im/InputContext;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, p0}, Lorg/apache/poi/java/awt/im/InputContext;->removeNotify(Lorg/apache/poi/java/awt/Component;)V

    :cond_5
    iget-object v2, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/java/awt/Component;->bufferStrategy:Lorg/apache/poi/java/awt/image/BufferStrategy;

    instance-of v8, v5, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;

    if-eqz v8, :cond_6

    check-cast v5, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->destroyBuffers()V

    :cond_6
    iget-object v5, p0, Lorg/apache/poi/java/awt/Component;->dropTarget:Lorg/apache/poi/java/awt/dnd/DropTarget;

    if-eqz v5, :cond_7

    iget-object v8, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    invoke-virtual {v5, v8}, Lorg/apache/poi/java/awt/dnd/DropTarget;->removeNotify(Lorg/apache/poi/java/awt/peer/ComponentPeer;)V

    :cond_7
    iget-boolean v5, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v5, :cond_8

    invoke-interface {v2, v3}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setVisible(Z)V

    :cond_8
    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peerFont:Lorg/apache/poi/java/awt/Font;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v5

    invoke-virtual {v5, p0, v3}, Lorg/apache/poi/java/awt/EventQueue;->removeSourceEvents(Ljava/lang/Object;Z)V

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->discardKeyEvents(Lorg/apache/poi/java/awt/Component;)V

    invoke-interface {v2}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->dispose()V

    invoke-virtual {p0, v4}, Lorg/apache/poi/java/awt/Component;->mixOnHiding(Z)V

    iput-boolean v3, p0, Lorg/apache/poi/java/awt/Component;->isAddNotifyComplete:Z

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->compoundShape:Lorg/apache/poi/sun/java2d/pipe/Region;

    :cond_9
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->hierarchyListener:Lorg/apache/poi/java/awt/event/HierarchyListener;

    if-nez v1, :cond_a

    iget-wide v1, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/32 v4, 0x8000

    and-long/2addr v1, v4

    cmp-long v1, v1, v6

    if-nez v1, :cond_a

    invoke-static {v4, v5}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    new-instance v1, Lorg/apache/poi/java/awt/event/HierarchyEvent;

    const/16 v4, 0x578

    iget-object v6, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isRecursivelyVisible()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v3, 0x4

    :cond_b
    or-int/2addr v2, v3

    int-to-long v7, v2

    move-object v2, v1

    move-object v3, p0

    move-object v5, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/java/awt/event/HierarchyEvent;-><init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;J)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Component;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, p2}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public repaint()V
    .locals 7

    iget v5, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v6, p0, Lorg/apache/poi/java/awt/Component;->height:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/java/awt/Component;->repaint(JIIII)V

    return-void
.end method

.method public repaint(IIII)V
    .locals 7

    const-wide/16 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/java/awt/Component;->repaint(JIIII)V

    return-void
.end method

.method public repaint(J)V
    .locals 7

    iget v5, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v6, p0, Lorg/apache/poi/java/awt/Component;->height:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/java/awt/Component;->repaint(JIIII)V

    return-void
.end method

.method public repaint(JIIII)V
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v0, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    if-gez p3, :cond_0

    add-int/2addr p5, p3

    move p3, v0

    :cond_0
    if-gez p4, :cond_1

    add-int/2addr p6, p4

    move p4, v0

    :cond_1
    iget v0, p0, Lorg/apache/poi/java/awt/Component;->width:I

    if-le p5, v0, :cond_2

    move v6, v0

    goto :goto_0

    :cond_2
    move v6, p5

    :goto_0
    iget p5, p0, Lorg/apache/poi/java/awt/Component;->height:I

    if-le p6, p5, :cond_3

    move v7, p5

    goto :goto_1

    :cond_3
    move v7, p6

    :goto_1
    if-lez v6, :cond_5

    if-gtz v7, :cond_4

    goto :goto_2

    :cond_4
    iget p5, p0, Lorg/apache/poi/java/awt/Component;->x:I

    add-int v4, p5, p3

    iget p3, p0, Lorg/apache/poi/java/awt/Component;->y:I

    add-int v5, p3, p4

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/java/awt/Component;->repaint(JIIII)V

    goto :goto_3

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz p1, :cond_7

    if-lez p5, :cond_7

    if-lez p6, :cond_7

    new-instance p1, Lorg/apache/poi/java/awt/event/PaintEvent;

    const/16 p2, 0x321

    new-instance v0, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {v0, p3, p4, p5, p6}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    invoke-direct {p1, p0, p2, v0}, Lorg/apache/poi/java/awt/event/PaintEvent;-><init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/Rectangle;)V

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->targetToAppContext(Ljava/lang/Object;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public requestFocus()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/java/awt/Component;->requestFocusHelper(ZZ)Z

    return-void
.end method

.method public requestFocus(Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/java/awt/Component;->requestFocusHelper(ZZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result p1

    return p1
.end method

.method public requestFocus(Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/Component;->requestFocusHelper(ZZ)Z

    move-result p1

    return p1
.end method

.method public requestFocus(ZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/java/awt/Component;->requestFocusHelper(ZZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result p1

    return p1
.end method

.method public final requestFocusHelper(ZZ)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->UNKNOWN:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/Component;->requestFocusHelper(ZZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result p1

    return p1
.end method

.method public final requestFocusHelper(ZZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Component;->isRequestFocusAccepted(ZZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x12c

    if-nez v0, :cond_1

    sget-object p1, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "requestFocus is not accepted"

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    invoke-static {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setMostRecentFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_4

    instance-of v3, v0, Lorg/apache/poi/java/awt/Window;

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object p1, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "component is recurively invisible"

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v0, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getNativeContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object v4, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v4, :cond_8

    sget-object p1, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "Peer is null"

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_7
    return v1

    :cond_8
    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->getMostRecentEventTime()J

    move-result-wide v0

    move-object v5, p0

    move v6, p1

    move v7, p2

    move-wide v8, v0

    move-object v10, p3

    invoke-interface/range {v4 .. v10}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->requestFocus(Lorg/apache/poi/java/awt/Component;ZZJLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p2, p0, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {p2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager(Lorg/apache/poi/sun/awt/AppContext;)Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object p2

    invoke-virtual {p2, v0, v1, p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->dequeueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    sget-object p2, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p2, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p3

    if-eqz p3, :cond_a

    const-string p3, "Peer request failed"

    goto :goto_2

    :cond_9
    sget-object p2, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p2, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p3

    if-eqz p3, :cond_a

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pass for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_2
    invoke-virtual {p2, p3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_a
    return p1

    :cond_b
    :goto_3
    sget-object p1, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_c

    const-string p2, "Component is not a part of visible hierarchy"

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_c
    return v1
.end method

.method public requestFocusInWindow()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/apache/poi/java/awt/Component;->requestFocusHelper(ZZ)Z

    move-result v0

    return v0
.end method

.method public requestFocusInWindow(Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/poi/java/awt/Component;->requestFocusHelper(ZZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result p1

    return p1
.end method

.method public requestFocusInWindow(Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/Component;->requestFocusHelper(ZZ)Z

    move-result p1

    return p1
.end method

.method public requestFocusInWindow(ZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/java/awt/Component;->requestFocusHelper(ZZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result p1

    return p1
.end method

.method public reshape(IIII)V
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    const/4 v1, 0x3

    const/4 v9, 0x5

    :try_start_0
    invoke-virtual {v7, v1}, Lorg/apache/poi/java/awt/Component;->setBoundsOp(I)V

    iget v10, v7, Lorg/apache/poi/java/awt/Component;->width:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v10, v4, :cond_1

    iget v1, v7, Lorg/apache/poi/java/awt/Component;->height:I

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v12

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v11

    :goto_1
    iget v13, v7, Lorg/apache/poi/java/awt/Component;->x:I

    if-ne v13, v0, :cond_3

    iget v2, v7, Lorg/apache/poi/java/awt/Component;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v12

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v11

    :goto_3
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    :try_start_1
    invoke-virtual {v7, v9}, Lorg/apache/poi/java/awt/Component;->setBoundsOp(I)V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_4
    :try_start_2
    iget v14, v7, Lorg/apache/poi/java/awt/Component;->y:I

    iget v15, v7, Lorg/apache/poi/java/awt/Component;->height:I

    iput v0, v7, Lorg/apache/poi/java/awt/Component;->x:I

    iput v3, v7, Lorg/apache/poi/java/awt/Component;->y:I

    iput v4, v7, Lorg/apache/poi/java/awt/Component;->width:I

    iput v5, v7, Lorg/apache/poi/java/awt/Component;->height:I

    if-eqz v1, :cond_5

    iput-boolean v12, v7, Lorg/apache/poi/java/awt/Component;->isPacked:Z

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/Component;->mixOnReshaping()V

    iget-object v6, v7, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v6, :cond_d

    instance-of v6, v6, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-nez v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/Component;->getBoundsOp()I

    move-result v6

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/java/awt/Component;->reshapeNativePeer(IIIII)V

    iget v0, v7, Lorg/apache/poi/java/awt/Component;->width:I

    if-ne v10, v0, :cond_7

    iget v0, v7, Lorg/apache/poi/java/awt/Component;->height:I

    if-eq v15, v0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v12

    goto :goto_5

    :cond_7
    :goto_4
    move v0, v11

    :goto_5
    iget v1, v7, Lorg/apache/poi/java/awt/Component;->x:I

    if-ne v13, v1, :cond_9

    iget v1, v7, Lorg/apache/poi/java/awt/Component;->y:I

    if-eq v14, v1, :cond_8

    goto :goto_6

    :cond_8
    move v1, v12

    goto :goto_7

    :cond_9
    :goto_6
    move v1, v11

    :goto_7
    instance-of v2, v7, Lorg/apache/poi/java/awt/Window;

    if-eqz v2, :cond_a

    move v2, v1

    move v11, v12

    goto :goto_8

    :cond_a
    move v2, v1

    :goto_8
    move v1, v0

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/Component;->invalidate()V

    :cond_c
    iget-object v0, v7, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    :cond_d
    if-eqz v11, :cond_e

    invoke-direct {v7, v1, v2}, Lorg/apache/poi/java/awt/Component;->notifyNewBounds(ZZ)V

    :cond_e
    invoke-direct {v7, v13, v14, v10, v15}, Lorg/apache/poi/java/awt/Component;->repaintParentIfNeeded(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7, v9}, Lorg/apache/poi/java/awt/Component;->setBoundsOp(I)V

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v7, v9}, Lorg/apache/poi/java/awt/Component;->setBoundsOp(I)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public resize(II)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Component;->setBoundsOp(I)V

    iget v1, p0, Lorg/apache/poi/java/awt/Component;->x:I

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->y:I

    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/apache/poi/java/awt/Component;->setBounds(IIII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resize(Lorg/apache/poi/java/awt/Dimension;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget p1, p1, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/java/awt/Component;->setSize(II)V

    return-void
.end method

.method public revalidate()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->revalidateSynchronously()V

    return-void
.end method

.method public final revalidateSynchronously()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidate()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->validate()V

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Container;->isValidateRoot()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Container;->validate()V

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAutoFocusTransferOnDisposal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->autoFocusTransferOnDisposal:Z

    return-void
.end method

.method public setBackground(Lorg/apache/poi/java/awt/Color;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->background:Lorg/apache/poi/java/awt/Color;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->background:Lorg/apache/poi/java/awt/Color;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getBackground()Lorg/apache/poi/java/awt/Color;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setBackground(Lorg/apache/poi/java/awt/Color;)V

    :cond_0
    const-string v1, "background"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Component;->reshape(IIII)V

    return-void
.end method

.method public setBounds(Lorg/apache/poi/java/awt/Rectangle;)V
    .locals 3

    iget v0, p1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v1, p1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v2, p1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget p1, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/poi/java/awt/Component;->setBounds(IIII)V

    return-void
.end method

.method public setBoundsOp(I)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x3

    if-ne p1, v0, :cond_0

    iput v1, p0, Lorg/apache/poi/java/awt/Component;->boundsOp:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/Component;->boundsOp:I

    if-ne v0, v1, :cond_1

    iput p1, p0, Lorg/apache/poi/java/awt/Component;->boundsOp:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setComponentOrientation(Lorg/apache/poi/java/awt/ComponentOrientation;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->componentOrientation:Lorg/apache/poi/java/awt/ComponentOrientation;

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->componentOrientation:Lorg/apache/poi/java/awt/ComponentOrientation;

    const-string v1, "componentOrientation"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    return-void
.end method

.method public setCursor(Lorg/apache/poi/java/awt/Cursor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->cursor:Lorg/apache/poi/java/awt/Cursor;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->updateCursorImmediately()V

    return-void
.end method

.method public declared-synchronized setDropTarget(Lorg/apache/poi/java/awt/dnd/DropTarget;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->dropTarget:Lorg/apache/poi/java/awt/dnd/DropTarget;

    if-eq p1, v0, :cond_4

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->dropTarget:Lorg/apache/poi/java/awt/dnd/DropTarget;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/dnd/DropTarget;->removeNotify(Lorg/apache/poi/java/awt/peer/ComponentPeer;)V

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->dropTarget:Lorg/apache/poi/java/awt/dnd/DropTarget;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/poi/java/awt/Component;->dropTarget:Lorg/apache/poi/java/awt/dnd/DropTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/dnd/DropTarget;->setComponent(Lorg/apache/poi/java/awt/Component;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_2
    :try_start_2
    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->dropTarget:Lorg/apache/poi/java/awt/dnd/DropTarget;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual {p1, p0}, Lorg/apache/poi/java/awt/dnd/DropTarget;->setComponent(Lorg/apache/poi/java/awt/Component;)V

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->dropTarget:Lorg/apache/poi/java/awt/dnd/DropTarget;

    invoke-virtual {v1, p1}, Lorg/apache/poi/java/awt/dnd/DropTarget;->addNotify(Lorg/apache/poi/java/awt/peer/ComponentPeer;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0, p0}, Lorg/apache/poi/java/awt/dnd/DropTarget;->setComponent(Lorg/apache/poi/java/awt/Component;)V

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->dropTarget:Lorg/apache/poi/java/awt/dnd/DropTarget;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/dnd/DropTarget;->addNotify(Lorg/apache/poi/java/awt/peer/ComponentPeer;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->enable(Z)V

    return-void
.end method

.method public setFocusTraversalKeys(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "+",
            "Lorg/apache/poi/java/awt/AWTKeyStroke;",
            ">;)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->setFocusTraversalKeys_NoIDCheck(ILjava/util/Set;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid focus traversal key identifier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFocusTraversalKeysEnabled(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeysEnabled:Z

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeysEnabled:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "focusTraversalKeysEnabled"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;ZZ)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setFocusTraversalKeys_NoIDCheck(ILjava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "+",
            "Lorg/apache/poi/java/awt/AWTKeyStroke;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeys:[Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->initializeFocusTraversalKeys()V

    :cond_0
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    instance-of v2, v1, Lorg/apache/poi/java/awt/AWTKeyStroke;

    if-eqz v2, :cond_5

    check-cast v1, Lorg/apache/poi/java/awt/AWTKeyStroke;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getKeyChar()C

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeys:[Ljava/util/Set;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    if-ne v2, p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Component;->getFocusTraversalKeys_NoIDCheck(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "focus traversal keys must be unique for a Component"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "focus traversal keys cannot map to KEY_TYPED events"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "object is expected to be AWTKeyStroke"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot set null focus traversal key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeys:[Ljava/util/Set;

    aget-object v1, v0, p1

    if-eqz p2, :cond_8

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    aput-object v2, v0, p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeyPropertyNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1, v1, p2}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFocusable(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->focusable:Z

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->focusable:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/poi/java/awt/Component;->isFocusTraversableOverridden:I

    const-string v1, "focusable"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;ZZ)V

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isFocusOwner()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->isAutoFocusTransferEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->transferFocus(Z)Z

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearMostRecentFocusOwner(Lorg/apache/poi/java/awt/Component;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFont(Lorg/apache/poi/java/awt/Font;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->font:Lorg/apache/poi/java/awt/Font;

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->font:Lorg/apache/poi/java/awt/Font;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getFont()Lorg/apache/poi/java/awt/Font;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v3}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setFont(Lorg/apache/poi/java/awt/Font;)V

    iput-object v3, p0, Lorg/apache/poi/java/awt/Component;->peerFont:Lorg/apache/poi/java/awt/Font;

    goto :goto_0

    :cond_0
    move-object v3, p1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "font"

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eq v3, v1, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Lorg/apache/poi/java/awt/Font;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public setForeground(Lorg/apache/poi/java/awt/Color;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->foreground:Lorg/apache/poi/java/awt/Color;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->foreground:Lorg/apache/poi/java/awt/Color;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getForeground()Lorg/apache/poi/java/awt/Color;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setForeground(Lorg/apache/poi/java/awt/Color;)V

    :cond_0
    const-string v1, "foreground"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->updateGraphicsData(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->removeNotify()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->addNotify()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setIgnoreRepaint(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->ignoreRepaint:Z

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->locale:Ljava/util/Locale;

    const-string v1, "locale"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    return-void
.end method

.method public setLocation(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->move(II)V

    return-void
.end method

.method public setLocation(Lorg/apache/poi/java/awt/Point;)V
    .locals 1

    iget v0, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/java/awt/Component;->setLocation(II)V

    return-void
.end method

.method public setMaximumSize(Lorg/apache/poi/java/awt/Dimension;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->maxSizeSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->maxSize:Lorg/apache/poi/java/awt/Dimension;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->maxSize:Lorg/apache/poi/java/awt/Dimension;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->maxSizeSet:Z

    const-string v1, "maximumSize"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setMinimumSize(Lorg/apache/poi/java/awt/Dimension;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->minSizeSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->minSize:Lorg/apache/poi/java/awt/Dimension;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->minSize:Lorg/apache/poi/java/awt/Dimension;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->minSizeSet:Z

    const-string v1, "minimumSize"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->name:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/Component;->nameExplicitlySet:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "name"

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPreferredSize(Lorg/apache/poi/java/awt/Dimension;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->prefSizeSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->prefSize:Lorg/apache/poi/java/awt/Dimension;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->prefSize:Lorg/apache/poi/java/awt/Dimension;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->prefSizeSet:Z

    const-string v1, "preferredSize"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->resize(II)V

    return-void
.end method

.method public setSize(Lorg/apache/poi/java/awt/Dimension;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->resize(Lorg/apache/poi/java/awt/Dimension;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->show(Z)V

    return-void
.end method

.method public show()V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->mixOnShowing()V

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setVisible(Z)V

    const/16 v4, 0x578

    iget-object v6, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    const-wide/16 v7, 0x4

    const-wide/32 v9, 0x8000

    invoke-static {v9, v10}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v9

    move-object v3, p0

    move-object v5, p0

    invoke-virtual/range {v3 .. v9}, Lorg/apache/poi/java/awt/Component;->createHierarchyEvents(ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;JZ)I

    instance-of v1, v2, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->repaint()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->updateCursorImmediately()V

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->componentListener:Lorg/apache/poi/java/awt/event/ComponentListener;

    if-nez v1, :cond_2

    iget-wide v1, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_2

    invoke-static {v3, v4}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Lorg/apache/poi/java/awt/event/ComponentEvent;

    const/16 v2, 0x66

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/java/awt/event/ComponentEvent;-><init>(Lorg/apache/poi/java/awt/Component;I)V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->invalidate()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    :goto_0
    return-void
.end method

.method public show(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->hide()V

    :goto_0
    return-void
.end method

.method public size()Lorg/apache/poi/java/awt/Dimension;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/poi/java/awt/Dimension;

    iget v1, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->height:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public final subtractAndApplyShape(Lorg/apache/poi/sun/java2d/pipe/Region;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    sget-object v0, Lorg/apache/poi/java/awt/Component;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;->getAppliedShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/java2d/pipe/Region;->getDifference(Lorg/apache/poi/sun/java2d/pipe/Region;)Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->applyCompoundShape(Lorg/apache/poi/sun/java2d/pipe/Region;)V

    return-void
.end method

.method public final subtractAndApplyShapeBelowMe()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getOpaqueShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getSiblingIndexBelow()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/java/awt/Container;->recursiveSubtractAndApplyShape(Lorg/apache/poi/sun/java2d/pipe/Region;I)V

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v2

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isOpaque()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getSiblingIndexBelow()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lorg/apache/poi/java/awt/Container;->recursiveSubtractAndApplyShape(Lorg/apache/poi/sun/java2d/pipe/Region;I)V

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transferFocus()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->nextFocus()V

    return-void
.end method

.method public transferFocus(Z)Z
    .locals 5

    sget-object v0, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearOnFailure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getNextFocusCandidate()Lorg/apache/poi/java/awt/Component;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->isFocusOwner()Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v2, p0, :cond_1

    sget-object v3, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->TRAVERSAL_FORWARD:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    invoke-virtual {v2, v3}, Lorg/apache/poi/java/awt/Component;->requestFocusInWindow(Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result v3

    :cond_1
    if-eqz p1, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "clear global focus owner"

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearGlobalFocusOwner()V

    :cond_3
    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "returning result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    :cond_4
    return v3
.end method

.method public transferFocusBackward()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->transferFocusBackward(Z)Z

    return-void
.end method

.method public transferFocusBackward(Z)Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTraversalRoot()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->canBeFocusOwner()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getFocusCycleRootAncestor()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;->getComponentBefore(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v3, v0}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;->getDefaultComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->TRAVERSAL_BACKWARD:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    invoke-virtual {v1, v0}, Lorg/apache/poi/java/awt/Component;->requestFocusInWindow(Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result v2

    :cond_3
    const/16 v0, 0x190

    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    sget-object p1, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p1, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "clear global focus owner"

    invoke-virtual {p1, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearGlobalFocusOwner()V

    :cond_5
    sget-object p1, Lorg/apache/poi/java/awt/Component;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p1, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "returning result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    :cond_6
    return v2
.end method

.method public transferFocusUpCycle()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getFocusCycleRootAncestor()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getFocusCycleRootAncestor()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getFocusCycleRootAncestor()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalCurrentFocusCycleRoot(Lorg/apache/poi/java/awt/Container;)V

    sget-object v1, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->TRAVERSAL_UP:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Component;->requestFocus(Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainingWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;->getDefaultComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalCurrentFocusCycleRoot(Lorg/apache/poi/java/awt/Container;)V

    sget-object v0, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->TRAVERSAL_UP:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    invoke-virtual {v1, v0}, Lorg/apache/poi/java/awt/Component;->requestFocus(Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public update(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->paint(Lorg/apache/poi/java/awt/Graphics;)V

    return-void
.end method

.method public final updateCursorImmediately()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getNativeContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    :goto_0
    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->updateCursorImmediately()V

    :cond_2
    return-void
.end method

.method public updateGraphicsData(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->graphicsConfig:Lorg/apache/poi/java/awt/GraphicsConfiguration;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->updateGraphicsData(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateZOrder()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getHWPeerAboveMe()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setZOrder(Lorg/apache/poi/java/awt/peer/ComponentPeer;)V

    return-void
.end method

.method public validate()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getFont()Lorg/apache/poi/java/awt/Font;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/java/awt/Component;->peerFont:Lorg/apache/poi/java/awt/Font;

    if-eq v3, v4, :cond_1

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Lorg/apache/poi/java/awt/Font;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-interface {v1, v3}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setFont(Lorg/apache/poi/java/awt/Font;)V

    iput-object v3, p0, Lorg/apache/poi/java/awt/Component;->peerFont:Lorg/apache/poi/java/awt/Font;

    :cond_1
    invoke-interface {v1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->layout()V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->valid:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->mixOnValidating()V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
