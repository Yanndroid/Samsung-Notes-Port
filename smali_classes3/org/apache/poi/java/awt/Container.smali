.class public Lorg/apache/poi/java/awt/Container;
.super Lorg/apache/poi/java/awt/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;,
        Lorg/apache/poi/java/awt/Container$DropTargetEventTargetFilter;,
        Lorg/apache/poi/java/awt/Container$EventTargetFilter;,
        Lorg/apache/poi/java/awt/Container$MouseEventTargetFilter;,
        Lorg/apache/poi/java/awt/Container$WakingRunnable;
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Lorg/apache/poi/java/awt/Component;

.field public static final INCLUDE_SELF:Z = true

.field public static final SEARCH_HEAVYWEIGHTS:Z = true

.field private static descendUnconditionallyWhenValidating:Z = false

.field private static final eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static final isJavaAwtSmartInvalidate:Z

.field private static final log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static final mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x40078073fd140c27L


# instance fields
.field private component:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/java/awt/Component;",
            ">;"
        }
    .end annotation
.end field

.field public transient containerListener:Lorg/apache/poi/java/awt/event/ContainerListener;

.field private containerSerializedDataVersion:I

.field public transient descendantsCount:I

.field private dispatcher:Lorg/apache/poi/java/awt/LightweightDispatcher;

.field private focusCycleRoot:Z

.field private transient focusTraversalPolicy:Lorg/apache/poi/java/awt/FocusTraversalPolicy;

.field private focusTraversalPolicyProvider:Z

.field public layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

.field public transient listeningBoundsChildren:I

.field public transient listeningChildren:I

.field public transient modalAppContext:Lorg/apache/poi/sun/awt/AppContext;

.field public transient modalComp:Lorg/apache/poi/java/awt/Component;

.field private transient numOfHWComponents:I

.field private transient numOfLWComponents:I

.field public transient preserveBackgroundColor:Lorg/apache/poi/java/awt/Color;

.field private transient printing:Z

.field private transient printingThreads:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "org.apache.poi.java.awt.Container"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/Container;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v0, "org.apache.poi.java.awt.event.Container"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/Container;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/poi/java/awt/Component;

    sput-object v1, Lorg/apache/poi/java/awt/Container;->EMPTY_ARRAY:[Lorg/apache/poi/java/awt/Component;

    const-string v1, "org.apache.poi.java.awt.mixing.Container"

    invoke-static {v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/java/awt/Container;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/io/ObjectStreamField;

    new-instance v2, Ljava/io/ObjectStreamField;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "ncomponents"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v4, [Lorg/apache/poi/java/awt/Component;

    const-string v5, "component"

    invoke-direct {v2, v5, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v4, Lorg/apache/poi/java/awt/LayoutManager;

    const-string v5, "layoutMgr"

    invoke-direct {v2, v5, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v4, Lorg/apache/poi/java/awt/LightweightDispatcher;

    const-string v5, "dispatcher"

    invoke-direct {v2, v5, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v4, Lorg/apache/poi/java/awt/Dimension;

    const-string v5, "maxSize"

    invoke-direct {v2, v5, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x4

    aput-object v2, v1, v4

    new-instance v2, Ljava/io/ObjectStreamField;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "focusCycleRoot"

    invoke-direct {v2, v5, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v5, "containerSerializedDataVersion"

    invoke-direct {v2, v5, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "focusTraversalPolicyProvider"

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sput-object v1, Lorg/apache/poi/java/awt/Container;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Container;->initIDs()V

    :cond_0
    new-instance v1, Lorg/apache/poi/java/awt/Container$1;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/Container$1;-><init>()V

    invoke-static {v1}, Lorg/apache/poi/sun/awt/AWTAccessor;->setContainerAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$ContainerAccessor;)V

    new-instance v1, Lorg/apache/poi/sun/security/action/GetBooleanAction;

    const-string v2, "org.apache.poi.java.awt.smartInvalidate"

    invoke-direct {v1, v2}, Lorg/apache/poi/sun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lorg/apache/poi/java/awt/Container;->isJavaAwtSmartInvalidate:Z

    sput-boolean v0, Lorg/apache/poi/java/awt/Container;->descendUnconditionallyWhenValidating:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Container;->focusCycleRoot:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Container;->printing:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/java/awt/Container;->preserveBackgroundColor:Lorg/apache/poi/java/awt/Color;

    iput v0, p0, Lorg/apache/poi/java/awt/Container;->numOfHWComponents:I

    iput v0, p0, Lorg/apache/poi/java/awt/Container;->numOfLWComponents:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/Container;->containerSerializedDataVersion:I

    return-void
.end method

.method private addDelicately(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;I)V
    .locals 9

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    const-wide/32 v0, 0x8000

    if-eq p2, p0, :cond_1

    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    iget-object p3, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    iput-object p0, p1, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/apache/poi/java/awt/Component;->setGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/java/awt/Component;->numListening(J)I

    move-result p3

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/poi/java/awt/Container;->adjustListeningChildren(JI)V

    const-wide/32 v2, 0x10000

    invoke-virtual {p1, v2, v3}, Lorg/apache/poi/java/awt/Component;->numListening(J)I

    move-result p3

    invoke-virtual {p0, v2, v3, p3}, Lorg/apache/poi/java/awt/Container;->adjustListeningChildren(JI)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->countHierarchyMembers()I

    move-result p3

    invoke-virtual {p0, p3}, Lorg/apache/poi/java/awt/Container;->adjustDescendants(I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2, p3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    iget-object p3, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz p3, :cond_5

    iget-object p3, p1, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->addNotify()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getHeavyweightContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object p3

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Container;->getHeavyweightContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v2

    if-eq v2, p3, :cond_4

    invoke-direct {p3, p1}, Lorg/apache/poi/java/awt/Container;->reparentChild(Lorg/apache/poi/java/awt/Component;)V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->updateZOrder()V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->relocateComponent()V

    :cond_5
    :goto_2
    if-eq p2, p0, :cond_b

    iget-object p2, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    if-eqz p2, :cond_7

    instance-of p3, p2, Lorg/apache/poi/java/awt/LayoutManager2;

    const/4 v2, 0x0

    if-eqz p3, :cond_6

    check-cast p2, Lorg/apache/poi/java/awt/LayoutManager2;

    invoke-interface {p2, p1, v2}, Lorg/apache/poi/java/awt/LayoutManager2;->addLayoutComponent(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-interface {p2, v2, p1}, Lorg/apache/poi/java/awt/LayoutManager;->addLayoutComponent(Ljava/lang/String;Lorg/apache/poi/java/awt/Component;)V

    :cond_7
    :goto_3
    iget-object p2, p0, Lorg/apache/poi/java/awt/Container;->containerListener:Lorg/apache/poi/java/awt/event/ContainerListener;

    if-nez p2, :cond_8

    iget-wide p2, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v2, 0x2

    and-long/2addr p2, v2

    const-wide/16 v4, 0x0

    cmp-long p2, p2, v4

    if-nez p2, :cond_8

    invoke-static {v2, v3}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    new-instance p2, Lorg/apache/poi/java/awt/event/ContainerEvent;

    const/16 p3, 0x12c

    invoke-direct {p2, p0, p3, p1}, Lorg/apache/poi/java/awt/event/ContainerEvent;-><init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/Component;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/Component;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_9
    const/16 v3, 0x578

    const-wide/16 v6, 0x1

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v8

    move-object v2, p1

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/java/awt/Component;->createHierarchyEvents(ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;JZ)I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isFocusOwner()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->canBeFocusOwnerRecursively()Z

    move-result p2

    if-nez p2, :cond_a

    :goto_4
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->transferFocus()V

    goto :goto_5

    :cond_a
    instance-of p1, p1, Lorg/apache/poi/java/awt/Container;

    if-eqz p1, :cond_c

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Container;->isParentOf(Lorg/apache/poi/java/awt/Component;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->canBeFocusOwnerRecursively()Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_4

    :cond_b
    const/16 p2, 0x578

    const-wide/16 v4, 0x578

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v6

    move-object v0, p1

    move v1, p2

    move-object v2, p1

    move-object v3, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/java/awt/Component;->createHierarchyEvents(ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;JZ)I

    :cond_c
    :goto_5
    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->updateCursorImmediately()V

    :cond_d
    return-void
.end method

.method private checkAddToSelf(Lorg/apache/poi/java/awt/Component;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_1

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_0

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adding container\'s parent to itself"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private checkAdding(Lorg/apache/poi/java/awt/Component;I)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt p2, v1, :cond_4

    if-ltz p2, :cond_4

    iget-object v1, p1, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal component position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be less then "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Container;->checkAddToSelf(Lorg/apache/poi/java/awt/Component;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Container;->checkNotAWindow(Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainingWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getContainingWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v1

    if-ne p2, v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/GraphicsDevice;->getIDstring()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/Component;->checkGD(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "component and container should be in the same top-level window"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal component position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkNotAWindow(Lorg/apache/poi/java/awt/Component;)V
    .locals 1

    instance-of p1, p1, Lorg/apache/poi/java/awt/Window;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adding a window to a container"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private findTraversalRoot()Lorg/apache/poi/java/awt/Container;
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentFocusCycleRoot()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getFocusCycleRootAncestor()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    move-object v1, p0

    :cond_1
    if-eq v1, v0, :cond_2

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalCurrentFocusCycleRoot(Lorg/apache/poi/java/awt/Container;)V

    :cond_2
    return-object v1
.end method

.method private getBottommostComponentIndex()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private getListenersCount(IZ)I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    if-eqz p2, :cond_0

    iget p1, p0, Lorg/apache/poi/java/awt/Container;->descendantsCount:I

    return p1

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    iget p1, p0, Lorg/apache/poi/java/awt/Container;->listeningBoundsChildren:I

    return p1

    :pswitch_1
    iget p1, p0, Lorg/apache/poi/java/awt/Container;->listeningChildren:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x578
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMouseEventTarget(IIZLorg/apache/poi/java/awt/Container$EventTargetFilter;Z)Lorg/apache/poi/java/awt/Component;
    .locals 8

    if-eqz p5, :cond_0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/Container;->getMouseEventTargetImpl(IIZLorg/apache/poi/java/awt/Container$EventTargetFilter;ZZ)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/Container;->getMouseEventTargetImpl(IIZLorg/apache/poi/java/awt/Container$EventTargetFilter;ZZ)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private getMouseEventTargetImpl(IIZLorg/apache/poi/java/awt/Container$EventTargetFilter;ZZ)Lorg/apache/poi/java/awt/Component;
    .locals 11

    move-object v1, p0

    move-object v0, p4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    :try_start_0
    iget-object v2, v1, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_4

    iget-object v2, v1, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Component;

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v3, :cond_3

    if-nez p5, :cond_0

    iget-object v3, v2, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v3, v3, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-nez v3, :cond_1

    :cond_0
    if-eqz p5, :cond_3

    iget-object v3, v2, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v3, v3, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-nez v3, :cond_3

    :cond_1
    iget v3, v2, Lorg/apache/poi/java/awt/Component;->x:I

    sub-int v3, p1, v3

    iget v4, v2, Lorg/apache/poi/java/awt/Component;->y:I

    sub-int v4, p2, v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/java/awt/Component;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    instance-of v3, v2, Lorg/apache/poi/java/awt/Container;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/poi/java/awt/Container;

    iget v3, v2, Lorg/apache/poi/java/awt/Component;->x:I

    sub-int v3, p1, v3

    iget v4, v2, Lorg/apache/poi/java/awt/Component;->y:I

    sub-int v4, p2, v4

    move v5, p3

    move-object v6, p4

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/java/awt/Container;->getMouseEventTarget(IIZLorg/apache/poi/java/awt/Container$EventTargetFilter;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v2

    if-eqz v2, :cond_3

    monitor-exit v8

    return-object v2

    :cond_2
    invoke-interface {p4, v2}, Lorg/apache/poi/java/awt/Container$EventTargetFilter;->accept(Lorg/apache/poi/java/awt/Component;)Z

    move-result v3

    if-eqz v3, :cond_3

    monitor-exit v8

    return-object v2

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v2, v2, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-nez v2, :cond_5

    if-eqz p3, :cond_6

    :cond_5
    const/4 v9, 0x1

    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v9, :cond_7

    invoke-interface {p4, p0}, Lorg/apache/poi/java/awt/Container$EventTargetFilter;->accept(Lorg/apache/poi/java/awt/Component;)Z

    move-result v0

    if-eqz v0, :cond_7

    monitor-exit v8

    return-object v1

    :cond_7
    const/4 v0, 0x0

    monitor-exit v8

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getTopmostComponentIndex()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static native initIDs()V
.end method

.method private isParentOf(Lorg/apache/poi/java/awt/Component;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :goto_0
    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    :try_start_0
    instance-of v1, p1, Lorg/apache/poi/java/awt/Window;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static isRemoveNotifyNeeded(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/Container;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p2, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, p0, Lorg/apache/poi/java/awt/Container;

    if-eqz v1, :cond_3

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Container;->hasHeavyweightDescendants()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    return v0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getHeavyweightContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Container;->getHeavyweightContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object p2

    if-eq p1, p2, :cond_5

    iget-object p0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    invoke-interface {p0}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->isReparentSupported()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_5
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/java/awt/Container;->EMPTY_ARRAY:[Lorg/apache/poi/java/awt/Component;

    const-string v2, "component"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/poi/java/awt/Component;

    const-string v2, "ncomponents"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    aget-object v6, v1, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "layoutMgr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/LayoutManager;

    iput-object v1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    const-string v1, "dispatcher"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/LightweightDispatcher;

    iput-object v1, p0, Lorg/apache/poi/java/awt/Container;->dispatcher:Lorg/apache/poi/java/awt/LightweightDispatcher;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->maxSize:Lorg/apache/poi/java/awt/Dimension;

    if-nez v1, :cond_1

    const-string v1, "maxSize"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Dimension;

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->maxSize:Lorg/apache/poi/java/awt/Dimension;

    :cond_1
    const-string v1, "focusCycleRoot"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Container;->focusCycleRoot:Z

    const-string v1, "containerSerializedDataVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/java/awt/Container;->containerSerializedDataVersion:I

    const-string v1, "focusTraversalPolicyProvider"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Container;->focusTraversalPolicyProvider:Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Component;

    iput-object p0, v1, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    const-wide/32 v2, 0x8000

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/java/awt/Component;->numListening(J)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/poi/java/awt/Container;->adjustListeningChildren(JI)V

    const-wide/32 v2, 0x10000

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/java/awt/Component;->numListening(J)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/poi/java/awt/Container;->adjustListeningChildren(JI)V

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->countHierarchyMembers()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Container;->adjustDescendants(I)V

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "containerL"

    if-ne v1, v0, :cond_3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/ContainerListener;

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/event/ContainerListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Container;->addContainerListener(Lorg/apache/poi/java/awt/event/ContainerListener;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    iput-object p1, p0, Lorg/apache/poi/java/awt/Container;->focusTraversalPolicy:Lorg/apache/poi/java/awt/FocusTraversalPolicy;
    :try_end_0
    .catch Ljava/io/OptionalDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    iget-boolean v0, p1, Ljava/io/OptionalDataException;->eof:Z

    if-eqz v0, :cond_6

    :cond_5
    :goto_3
    return-void

    :cond_6
    throw p1
.end method

.method private recursiveHideHeavyweightChildren()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->hasHeavyweightDescendants()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lorg/apache/poi/java/awt/Container;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/poi/java/awt/Container;

    invoke-direct {v2}, Lorg/apache/poi/java/awt/Container;->recursiveHideHeavyweightChildren()V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setVisible(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private recursiveRelocateHeavyweightChildren(Lorg/apache/poi/java/awt/Point;)V
    .locals 11

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lorg/apache/poi/java/awt/Container;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Container;->hasHeavyweightDescendants()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/apache/poi/java/awt/Point;

    invoke-direct {v3, p1}, Lorg/apache/poi/java/awt/Point;-><init>(Lorg/apache/poi/java/awt/Point;)V

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getX()I

    move-result v4

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getY()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lorg/apache/poi/java/awt/Point;->translate(II)V

    invoke-direct {v2, v3}, Lorg/apache/poi/java/awt/Container;->recursiveRelocateHeavyweightChildren(Lorg/apache/poi/java/awt/Point;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v5

    if-eqz v5, :cond_1

    iget v2, p1, Lorg/apache/poi/java/awt/Point;->x:I

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getX()I

    move-result v3

    add-int v6, v2, v3

    iget v2, p1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getY()I

    move-result v3

    add-int v7, v2, v3

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getHeight()I

    move-result v9

    const/4 v10, 0x1

    invoke-interface/range {v5 .. v10}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setBounds(IIIII)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private recursiveShowHeavyweightChildren()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->hasHeavyweightDescendants()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lorg/apache/poi/java/awt/Container;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/apache/poi/java/awt/Container;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/Container;->recursiveShowHeavyweightChildren()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->setVisible(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private removeDelicately(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;I)Z
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Container;->getComponentZOrder(Lorg/apache/poi/java/awt/Component;)I

    move-result v0

    invoke-static {p1, p0, p2}, Lorg/apache/poi/java/awt/Container;->isRemoveNotifyNeeded(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/Container;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->removeNotify()V

    :cond_0
    const-wide/32 v2, 0x8000

    if-eq p2, p0, :cond_3

    iget-object p2, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lorg/apache/poi/java/awt/LayoutManager;->removeLayoutComponent(Lorg/apache/poi/java/awt/Component;)V

    :cond_1
    invoke-virtual {p1, v2, v3}, Lorg/apache/poi/java/awt/Component;->numListening(J)I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p0, v2, v3, p2}, Lorg/apache/poi/java/awt/Container;->adjustListeningChildren(JI)V

    const-wide/32 p2, 0x10000

    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/java/awt/Component;->numListening(J)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0, p2, p3, v4}, Lorg/apache/poi/java/awt/Container;->adjustListeningChildren(JI)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->countHierarchyMembers()I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/Container;->adjustDescendants(I)V

    const/4 p2, 0x0

    iput-object p2, p1, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v1, :cond_2

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/Component;->setGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    :cond_2
    iget-object p2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {p2, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    iget-object p2, p1, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-nez p2, :cond_6

    iget-object p2, p0, Lorg/apache/poi/java/awt/Container;->containerListener:Lorg/apache/poi/java/awt/event/ContainerListener;

    if-nez p2, :cond_4

    iget-wide p2, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v4, 0x2

    and-long/2addr p2, v4

    const-wide/16 v6, 0x0

    cmp-long p2, p2, v6

    if-nez p2, :cond_4

    invoke-static {v4, v5}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    new-instance p2, Lorg/apache/poi/java/awt/event/ContainerEvent;

    const/16 p3, 0x12d

    invoke-direct {p2, p0, p3, p1}, Lorg/apache/poi/java/awt/event/ContainerEvent;-><init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/Component;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/Component;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_5
    const/16 v5, 0x578

    const-wide/16 v8, 0x1

    invoke-static {v2, v3}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v10

    move-object v4, p1

    move-object v6, p1

    move-object v7, p0

    invoke-virtual/range {v4 .. v10}, Lorg/apache/poi/java/awt/Component;->createHierarchyEvents(ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;JZ)I

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->updateCursorImmediately()V

    :cond_6
    return v1
.end method

.method private reparentChild(Lorg/apache/poi/java/awt/Component;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/peer/ContainerPeer;

    check-cast p1, Lorg/apache/poi/java/awt/Container;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/java/awt/Container;->reparentTraverse(Lorg/apache/poi/java/awt/peer/ContainerPeer;Lorg/apache/poi/java/awt/Container;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/peer/ContainerPeer;

    invoke-interface {p1, v0}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->reparent(Lorg/apache/poi/java/awt/peer/ContainerPeer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private reparentTraverse(Lorg/apache/poi/java/awt/peer/ContainerPeer;Lorg/apache/poi/java/awt/Container;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lorg/apache/poi/java/awt/Container;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/java/awt/Container;

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/java/awt/Container;->reparentTraverse(Lorg/apache/poi/java/awt/peer/ContainerPeer;Lorg/apache/poi/java/awt/Container;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->reparent(Lorg/apache/poi/java/awt/peer/ContainerPeer;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private startLWModal()V
    .locals 10

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Container;->modalAppContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->getMostRecentEventTime()J

    move-result-wide v0

    const-string v2, "javax.swing.JInternalFrame"

    invoke-static {p0, v2}, Lorg/apache/poi/java/awt/Component;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p0

    check-cast v2, Ljavax/swing/JInternalFrame;

    move-object v3, v2

    check-cast v3, Ljavax/swing/JInternalFrame;

    invoke-virtual {v2}, Ljavax/swing/JInternalFrame;->getMostRecentFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->enqueueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getHeavyweightContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v4

    iget-object v5, v4, Lorg/apache/poi/java/awt/Container;->modalComp:Lorg/apache/poi/java/awt/Component;

    if-eqz v5, :cond_2

    iput-object v5, p0, Lorg/apache/poi/java/awt/Container;->modalComp:Lorg/apache/poi/java/awt/Component;

    iput-object p0, v4, Lorg/apache/poi/java/awt/Container;->modalComp:Lorg/apache/poi/java/awt/Component;

    monitor-exit v3

    return-void

    :cond_2
    iput-object p0, v4, Lorg/apache/poi/java/awt/Container;->modalComp:Lorg/apache/poi/java/awt/Component;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v3, Lorg/apache/poi/java/awt/Container$3;

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/java/awt/Container$3;-><init>(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/Container;)V

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->isDispatchThread()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentSequencedEvent()Lorg/apache/poi/java/awt/SequencedEvent;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/SequencedEvent;->dispose()V

    :cond_3
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_1
    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/sun/awt/PeerEvent;

    const-wide/16 v8, 0x1

    invoke-direct {v7, p0, v3, v8, v9}, Lorg/apache/poi/sun/awt/PeerEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;J)V

    invoke-virtual {v6, v7}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :goto_1
    iget-object v3, p0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    if-nez v3, :cond_5

    iget-object v3, v4, Lorg/apache/poi/java/awt/Container;->modalComp:Lorg/apache/poi/java/awt/Component;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :cond_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object v3, p0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    if-nez v3, :cond_7

    if-eqz v2, :cond_6

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->dequeueKeyEvents(JLorg/apache/poi/java/awt/Component;)V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->windowClosingException:Ljava/lang/RuntimeException;

    throw v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method private stopLWModal()V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->modalAppContext:Lorg/apache/poi/sun/awt/AppContext;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getHeavyweightContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->modalComp:Lorg/apache/poi/java/awt/Component;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iput-object v2, v1, Lorg/apache/poi/java/awt/Container;->modalComp:Lorg/apache/poi/java/awt/Component;

    iput-object v3, p0, Lorg/apache/poi/java/awt/Container;->modalComp:Lorg/apache/poi/java/awt/Component;

    monitor-exit v0

    return-void

    :cond_0
    iput-object v3, v1, Lorg/apache/poi/java/awt/Container;->modalComp:Lorg/apache/poi/java/awt/Component;

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->modalAppContext:Lorg/apache/poi/sun/awt/AppContext;

    new-instance v2, Lorg/apache/poi/sun/awt/PeerEvent;

    new-instance v3, Lorg/apache/poi/java/awt/Container$WakingRunnable;

    invoke-direct {v3}, Lorg/apache/poi/java/awt/Container$WakingRunnable;-><init>()V

    const-wide/16 v4, 0x1

    invoke-direct {v2, p0, v3, v4, v5}, Lorg/apache/poi/sun/awt/PeerEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;J)V

    invoke-static {v1, v2}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_2
    new-instance v1, Lorg/apache/poi/java/awt/Container$WakingRunnable;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/Container$WakingRunnable;-><init>()V

    invoke-static {v1}, Lorg/apache/poi/java/awt/EventQueue;->invokeLater(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "ncomponents"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentsSync()[Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    const-string v2, "component"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    const-string v2, "layoutMgr"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->dispatcher:Lorg/apache/poi/java/awt/LightweightDispatcher;

    const-string v2, "dispatcher"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->maxSize:Lorg/apache/poi/java/awt/Dimension;

    const-string v2, "maxSize"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Container;->focusCycleRoot:Z

    const-string v2, "focusCycleRoot"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    iget v1, p0, Lorg/apache/poi/java/awt/Container;->containerSerializedDataVersion:I

    const-string v2, "containerSerializedDataVersion"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Container;->focusTraversalPolicyProvider:Z

    const-string v2, "focusTraversalPolicyProvider"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->containerListener:Lorg/apache/poi/java/awt/event/ContainerListener;

    const-string v1, "containerL"

    invoke-static {p1, v1, v0}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->focusTraversalPolicy:Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    instance-of v2, v1, Ljava/io/Serializable;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p2, p1, v0}, Lorg/apache/poi/java/awt/Container;->addImpl(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public add(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/Container;->addImpl(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;I)V

    return-object p1
.end method

.method public add(Lorg/apache/poi/java/awt/Component;I)Lorg/apache/poi/java/awt/Component;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/java/awt/Container;->addImpl(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;I)V

    return-object p1
.end method

.method public add(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/Container;->addImpl(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;I)V

    return-void
.end method

.method public add(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Container;->addImpl(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;I)V

    return-void
.end method

.method public declared-synchronized addContainerListener(Lorg/apache/poi/java/awt/event/ContainerListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->containerListener:Lorg/apache/poi/java/awt/event/ContainerListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/ContainerListener;Lorg/apache/poi/java/awt/event/ContainerListener;)Lorg/apache/poi/java/awt/event/ContainerListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Container;->containerListener:Lorg/apache/poi/java/awt/event/ContainerListener;

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

.method public addImpl(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;I)V
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt p3, v2, :cond_b

    const/4 v2, -0x1

    if-gez p3, :cond_0

    if-ne p3, v2, :cond_b

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Container;->checkAddToSelf(Lorg/apache/poi/java/awt/Component;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Container;->checkNotAWindow(Lorg/apache/poi/java/awt/Component;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/GraphicsDevice;->getIDstring()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/poi/java/awt/Component;->checkGD(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p1, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Lorg/apache/poi/java/awt/Container;->remove(Lorg/apache/poi/java/awt/Component;)V

    iget-object v3, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt p3, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal component position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-ne p3, v2, :cond_4

    iget-object p3, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    iput-object p0, p1, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {p1, v1}, Lorg/apache/poi/java/awt/Component;->setGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    const-wide/32 v1, 0x8000

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/java/awt/Component;->numListening(J)I

    move-result p3

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/poi/java/awt/Container;->adjustListeningChildren(JI)V

    const-wide/32 v3, 0x10000

    invoke-virtual {p1, v3, v4}, Lorg/apache/poi/java/awt/Component;->numListening(J)I

    move-result p3

    invoke-virtual {p0, v3, v4, p3}, Lorg/apache/poi/java/awt/Container;->adjustListeningChildren(JI)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->countHierarchyMembers()I

    move-result p3

    invoke-virtual {p0, p3}, Lorg/apache/poi/java/awt/Container;->adjustDescendants(I)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    iget-object p3, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->addNotify()V

    :cond_5
    iget-object p3, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    if-eqz p3, :cond_7

    instance-of v3, p3, Lorg/apache/poi/java/awt/LayoutManager2;

    if-eqz v3, :cond_6

    check-cast p3, Lorg/apache/poi/java/awt/LayoutManager2;

    invoke-interface {p3, p1, p2}, Lorg/apache/poi/java/awt/LayoutManager2;->addLayoutComponent(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_7

    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p2, p1}, Lorg/apache/poi/java/awt/LayoutManager;->addLayoutComponent(Ljava/lang/String;Lorg/apache/poi/java/awt/Component;)V

    :cond_7
    :goto_2
    iget-object p2, p0, Lorg/apache/poi/java/awt/Container;->containerListener:Lorg/apache/poi/java/awt/event/ContainerListener;

    if-nez p2, :cond_8

    iget-wide p2, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v3, 0x2

    and-long/2addr p2, v3

    const-wide/16 v5, 0x0

    cmp-long p2, p2, v5

    if-nez p2, :cond_8

    invoke-static {v3, v4}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    new-instance p2, Lorg/apache/poi/java/awt/event/ContainerEvent;

    const/16 p3, 0x12c

    invoke-direct {p2, p0, p3, p1}, Lorg/apache/poi/java/awt/event/ContainerEvent;-><init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/Component;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/Component;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_9
    const/16 v4, 0x578

    const-wide/16 v7, 0x1

    invoke-static {v1, v2}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v9

    move-object v3, p1

    move-object v5, p1

    move-object v6, p0

    invoke-virtual/range {v3 .. v9}, Lorg/apache/poi/java/awt/Component;->createHierarchyEvents(ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;JZ)I

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->updateCursorImmediately()V

    :cond_a
    monitor-exit v0

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal component position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addNotify()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->addNotify()V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v1, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/java/awt/LightweightDispatcher;

    invoke-direct {v1, p0}, Lorg/apache/poi/java/awt/LightweightDispatcher;-><init>(Lorg/apache/poi/java/awt/Container;)V

    iput-object v1, p0, Lorg/apache/poi/java/awt/Container;->dispatcher:Lorg/apache/poi/java/awt/LightweightDispatcher;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->addNotify()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public adjustDecendantsOnParent(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Container;->adjustDescendants(I)V

    :cond_0
    return-void
.end method

.method public adjustDescendants(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/Container;->descendantsCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/java/awt/Container;->descendantsCount:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Container;->adjustDecendantsOnParent(I)V

    return-void
.end method

.method public adjustListeningChildren(JI)V
    .locals 8

    sget-object v0, Lorg/apache/poi/java/awt/Container;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    const-wide/32 v2, 0x10000

    const-wide/32 v4, 0x8000

    if-eqz v1, :cond_2

    cmp-long v1, p1, v4

    if-eqz v1, :cond_1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1

    const-wide/32 v6, 0x18000

    cmp-long v1, p1, v6

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    const-string v1, "Assertion failed"

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_2
    if-nez p3, :cond_3

    return-void

    :cond_3
    and-long v0, p1, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/apache/poi/java/awt/Container;->listeningChildren:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/poi/java/awt/Container;->listeningChildren:I

    :cond_4
    and-long v0, p1, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/apache/poi/java/awt/Container;->listeningBoundsChildren:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/poi/java/awt/Container;->listeningBoundsChildren:I

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Component;->adjustListeningChildrenOnParent(JI)V

    return-void
.end method

.method public applyComponentOrientation(Lorg/apache/poi/java/awt/ComponentOrientation;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->applyComponentOrientation(Lorg/apache/poi/java/awt/ComponentOrientation;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v2, p1}, Lorg/apache/poi/java/awt/Component;->applyComponentOrientation(Lorg/apache/poi/java/awt/ComponentOrientation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

.method public areFocusTraversalKeysSet(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x4

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

.method public canContainFocusOwner(Lorg/apache/poi/java/awt/Component;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object v0

    instance-of v2, v0, Lorg/apache/poi/java/awt/DefaultFocusTraversalPolicy;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/apache/poi/java/awt/DefaultFocusTraversalPolicy;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/DefaultFocusTraversalPolicy;->accept(Lorg/apache/poi/java/awt/Component;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lorg/apache/poi/java/awt/Container;->canContainFocusOwner(Lorg/apache/poi/java/awt/Component;)Z

    move-result p1

    monitor-exit v0

    return p1

    :cond_2
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return v1
.end method

.method public checkGD(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Component;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/apache/poi/java/awt/Component;->checkGD(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearCurrentFocusCycleRootOnHide()V
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentFocusCycleRoot()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    if-eq v1, p0, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/poi/java/awt/Container;->isParentOf(Lorg/apache/poi/java/awt/Component;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalCurrentFocusCycleRoot(Lorg/apache/poi/java/awt/Container;)V

    :cond_1
    return-void
.end method

.method public clearMostRecentFocusOwnerOnHide()V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainingWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-static {v1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Component;

    move-result-object v4

    if-eq v4, p0, :cond_0

    invoke-direct {p0, v4}, Lorg/apache/poi/java/awt/Container;->isParentOf(Lorg/apache/poi/java/awt/Component;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    const-class v4, Lorg/apache/poi/java/awt/KeyboardFocusManager;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Window;->getTemporaryLostComponent()Lorg/apache/poi/java/awt/Component;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/poi/java/awt/Container;->isParentOf(Lorg/apache/poi/java/awt/Component;)Z

    move-result v6

    if-nez v6, :cond_2

    if-ne v5, p0, :cond_3

    :cond_2
    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/Window;->setTemporaryLostComponent(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;

    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_5

    invoke-static {v1, v2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Component;)V

    :cond_5
    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final containsFocus()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Container;->isParentOf(Lorg/apache/poi/java/awt/Component;)Z

    move-result v0

    return v0
.end method

.method public countComponents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public countHierarchyMembers()I
    .locals 3

    sget-object v0, Lorg/apache/poi/java/awt/Container;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->countHierarchyMembers()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/poi/java/awt/Container;->descendantsCount:I

    if-eq v1, v0, :cond_1

    sget-object v0, Lorg/apache/poi/java/awt/Container;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string v1, "Assertion (descendantsCount == sum) failed"

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lorg/apache/poi/java/awt/Container;->descendantsCount:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final createChildHierarchyEvents(IJZ)V
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p4}, Lorg/apache/poi/java/awt/Container;->getListenersCount(IZ)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/java/awt/Component;

    iget-object v6, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    move v4, p1

    move-object v5, p0

    move-wide v7, p2

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Lorg/apache/poi/java/awt/Component;->createHierarchyEvents(ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;JZ)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final createHierarchyEvents(ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;JZ)I
    .locals 13

    move-object v0, p0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    move v8, p1

    move/from16 v9, p6

    invoke-direct {p0, p1, v9}, Lorg/apache/poi/java/awt/Container;->getListenersCount(IZ)I

    move-result v10

    const/4 v1, 0x0

    move v11, v1

    move v12, v10

    :goto_0
    if-lez v12, :cond_0

    iget-object v1, v0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Component;

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/java/awt/Component;->createHierarchyEvents(ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;JZ)I

    move-result v1

    sub-int/2addr v12, v1

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p6}, Lorg/apache/poi/java/awt/Component;->createHierarchyEvents(ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;JZ)I

    move-result v1

    add-int/2addr v10, v1

    return v10
.end method

.method public final decreaseComponentCount(Lorg/apache/poi/java/awt/Component;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Lorg/apache/poi/java/awt/Container;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/java/awt/Container;

    iget v2, v1, Lorg/apache/poi/java/awt/Container;->numOfLWComponents:I

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/java/awt/Container;

    iget v1, v1, Lorg/apache/poi/java/awt/Container;->numOfHWComponents:I

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :goto_1
    move-object p1, p0

    :goto_2
    if-eqz p1, :cond_2

    iget v3, p1, Lorg/apache/poi/java/awt/Container;->numOfLWComponents:I

    sub-int/2addr v3, v1

    iput v3, p1, Lorg/apache/poi/java/awt/Container;->numOfLWComponents:I

    iget v3, p1, Lorg/apache/poi/java/awt/Container;->numOfHWComponents:I

    sub-int/2addr v3, v2

    iput v3, p1, Lorg/apache/poi/java/awt/Container;->numOfHWComponents:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object p1

    goto :goto_2

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Peer does not exist while invoking the decreaseComponentCount() method"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public deliverEvent(Lorg/apache/poi/java/awt/Event;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p1, Lorg/apache/poi/java/awt/Event;->x:I

    iget v1, p1, Lorg/apache/poi/java/awt/Event;->y:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/java/awt/Container;->getComponentAt(II)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    iget v1, v0, Lorg/apache/poi/java/awt/Component;->x:I

    neg-int v1, v1

    iget v2, v0, Lorg/apache/poi/java/awt/Component;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/java/awt/Event;->translate(II)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->deliverEvent(Lorg/apache/poi/java/awt/Event;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->postEvent(Lorg/apache/poi/java/awt/Event;)Z

    :goto_0
    return-void
.end method

.method public dispatchEventImpl(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->dispatcher:Lorg/apache/poi/java/awt/LightweightDispatcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/LightweightDispatcher;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->consume()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->handleEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->dispatchEventImpl(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result p1

    const/16 v1, 0x64

    const-wide/32 v2, 0x10000

    const-wide/16 v4, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0x65

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x57a

    invoke-static {v2, v3}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v1

    :goto_0
    invoke-virtual {p0, p1, v4, v5, v1}, Lorg/apache/poi/java/awt/Container;->createChildHierarchyEvents(IJZ)V

    goto :goto_1

    :cond_3
    const/16 p1, 0x579

    invoke-static {v2, v3}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v1

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dispatchEventToSelf(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->dispatchEventImpl(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public doLayout()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->layout()V

    return-void
.end method

.method public eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v0

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    iget-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/poi/java/awt/Container;->containerListener:Lorg/apache/poi/java/awt/event/ContainerListener;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public findComponentAt(II)Lorg/apache/poi/java/awt/Component;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/Container;->findComponentAt(IIZ)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    return-object p1
.end method

.method public final findComponentAt(IIZ)Lorg/apache/poi/java/awt/Component;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isRecursivelyVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Container;->findComponentAtImpl(IIZ)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findComponentAt(Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/Component;
    .locals 1

    iget v0, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/java/awt/Container;->findComponentAt(II)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    return-object p1
.end method

.method public final findComponentAtImpl(IIZ)Lorg/apache/poi/java/awt/Component;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v0, :cond_9

    if-nez p3, :cond_0

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->enabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Component;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v3, v3, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-nez v3, :cond_3

    instance-of v3, v2, Lorg/apache/poi/java/awt/Container;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/java/awt/Container;

    iget v4, v2, Lorg/apache/poi/java/awt/Component;->x:I

    sub-int v4, p1, v4

    iget v2, v2, Lorg/apache/poi/java/awt/Component;->y:I

    sub-int v2, p2, v2

    invoke-virtual {v3, v4, v2, p3}, Lorg/apache/poi/java/awt/Container;->findComponentAtImpl(IIZ)Lorg/apache/poi/java/awt/Component;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget v3, v2, Lorg/apache/poi/java/awt/Component;->x:I

    sub-int v3, p1, v3

    iget v4, v2, Lorg/apache/poi/java/awt/Component;->y:I

    sub-int v4, p2, v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/java/awt/Component;->locate(II)Lorg/apache/poi/java/awt/Component;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v3, :cond_3

    if-nez p3, :cond_2

    iget-boolean v3, v2, Lorg/apache/poi/java/awt/Component;->enabled:Z

    if-eqz v3, :cond_3

    :cond_2
    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Component;

    if-eqz v1, :cond_7

    iget-object v2, v1, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v2, v2, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v2, :cond_7

    instance-of v2, v1, Lorg/apache/poi/java/awt/Container;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/java/awt/Container;

    iget v3, v1, Lorg/apache/poi/java/awt/Component;->x:I

    sub-int v3, p1, v3

    iget v1, v1, Lorg/apache/poi/java/awt/Component;->y:I

    sub-int v1, p2, v1

    invoke-virtual {v2, v3, v1, p3}, Lorg/apache/poi/java/awt/Container;->findComponentAtImpl(IIZ)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    goto :goto_3

    :cond_5
    iget v2, v1, Lorg/apache/poi/java/awt/Component;->x:I

    sub-int v2, p1, v2

    iget v3, v1, Lorg/apache/poi/java/awt/Component;->y:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/java/awt/Component;->locate(II)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_7

    iget-boolean v2, v1, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v2, :cond_7

    if-nez p3, :cond_6

    iget-boolean v2, v1, Lorg/apache/poi/java/awt/Component;->enabled:Z

    if-eqz v2, :cond_7

    :cond_6
    return-object v1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    return-object p0

    :cond_9
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccessibleAt(Lorg/apache/poi/java/awt/Point;)Ljavax/accessibility/Accessible;
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    instance-of v1, p0, Ljavax/accessibility/Accessible;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Ljavax/accessibility/Accessible;

    invoke-interface {v1}, Ljavax/accessibility/Accessible;->getAccessibleContext()Ljavax/accessibility/AccessibleContext;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/accessibility/AccessibleContext;->getAccessibleChildrenCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljavax/accessibility/AccessibleContext;->getAccessibleChild(I)Ljavax/accessibility/Accessible;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljavax/accessibility/Accessible;->getAccessibleContext()Ljavax/accessibility/AccessibleContext;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljavax/accessibility/AccessibleContext;->getAccessibleComponent()Ljavax/accessibility/AccessibleComponent;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljavax/accessibility/AccessibleComponent;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljavax/accessibility/AccessibleComponent;->getLocation()Lorg/apache/poi/java/awt/Point;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/java/awt/Point;

    iget v8, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget v9, v6, Lorg/apache/poi/java/awt/Point;->x:I

    sub-int/2addr v8, v9

    iget v9, p1, Lorg/apache/poi/java/awt/Point;->y:I

    iget v6, v6, Lorg/apache/poi/java/awt/Point;->y:I

    sub-int/2addr v9, v6

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    invoke-interface {v5, v7}, Ljavax/accessibility/AccessibleComponent;->contains(Lorg/apache/poi/java/awt/Point;)Z

    move-result v5

    if-eqz v5, :cond_0

    monitor-exit v0

    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p1, p0

    check-cast p1, Ljavax/accessibility/Accessible;

    monitor-exit v0

    return-object p1

    :cond_2
    iget v1, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget v3, p1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {p0, v1, v3}, Lorg/apache/poi/java/awt/Component;->contains(II)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    move-object v4, v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v1

    move-object v4, p0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Component;->getLocation()Lorg/apache/poi/java/awt/Point;

    move-result-object v6

    iget v7, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget v8, v6, Lorg/apache/poi/java/awt/Point;->x:I

    sub-int/2addr v7, v8

    iget v8, p1, Lorg/apache/poi/java/awt/Point;->y:I

    iget v6, v6, Lorg/apache/poi/java/awt/Point;->y:I

    sub-int/2addr v8, v6

    invoke-virtual {v5, v7, v8}, Lorg/apache/poi/java/awt/Component;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v4, v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    instance-of p1, v4, Ljavax/accessibility/Accessible;

    if-eqz p1, :cond_6

    check-cast v4, Ljavax/accessibility/Accessible;

    monitor-exit v0

    return-object v4

    :cond_6
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAccessibleChild(I)Ljavax/accessibility/Accessible;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponents()[Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_2

    aget-object v4, v1, v2

    instance-of v4, v4, Ljavax/accessibility/Accessible;

    if-eqz v4, :cond_1

    if-ne v3, p1, :cond_0

    aget-object p1, v1, v2

    check-cast p1, Ljavax/accessibility/Accessible;

    monitor-exit v0

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAccessibleChildrenCount()I
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponents()[Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    aget-object v4, v1, v2

    instance-of v4, v4, Ljavax/accessibility/Accessible;

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAlignmentX()F
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    instance-of v0, v0, Lorg/apache/poi/java/awt/LayoutManager2;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    check-cast v1, Lorg/apache/poi/java/awt/LayoutManager2;

    invoke-interface {v1, p0}, Lorg/apache/poi/java/awt/LayoutManager2;->getLayoutAlignmentX(Lorg/apache/poi/java/awt/Container;)F

    move-result v1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->getAlignmentX()F

    move-result v1

    :goto_0
    return v1
.end method

.method public getAlignmentY()F
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    instance-of v0, v0, Lorg/apache/poi/java/awt/LayoutManager2;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    check-cast v1, Lorg/apache/poi/java/awt/LayoutManager2;

    invoke-interface {v1, p0}, Lorg/apache/poi/java/awt/LayoutManager2;->getLayoutAlignmentY(Lorg/apache/poi/java/awt/Container;)F

    move-result v1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->getAlignmentY()F

    move-result v1

    :goto_0
    return v1
.end method

.method public getComponent(I)Lorg/apache/poi/java/awt/Component;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Component;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such child: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getComponentAt(II)Lorg/apache/poi/java/awt/Component;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Container;->locate(II)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    return-object p1
.end method

.method public getComponentAt(Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/Component;
    .locals 1

    iget v0, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/java/awt/Container;->getComponentAt(II)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    return-object p1
.end method

.method public getComponentCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->countComponents()I

    move-result v0

    return v0
.end method

.method public getComponentZOrder(Lorg/apache/poi/java/awt/Component;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eq v2, p0, :cond_1

    monitor-exit v1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getComponents()[Lorg/apache/poi/java/awt/Component;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponents_NoClientCode()[Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    return-object v0
.end method

.method public getComponentsSync()[Lorg/apache/poi/java/awt/Component;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponents()[Lorg/apache/poi/java/awt/Component;

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

.method public final getComponents_NoClientCode()[Lorg/apache/poi/java/awt/Component;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    sget-object v1, Lorg/apache/poi/java/awt/Container;->EMPTY_ARRAY:[Lorg/apache/poi/java/awt/Component;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/Component;

    return-object v0
.end method

.method public declared-synchronized getContainerListeners()[Lorg/apache/poi/java/awt/event/ContainerListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/ContainerListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Container;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/ContainerListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/ContainerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDropTargetEventTarget(IIZ)Lorg/apache/poi/java/awt/Component;
    .locals 6

    sget-object v4, Lorg/apache/poi/java/awt/Container$DropTargetEventTargetFilter;->FILTER:Lorg/apache/poi/java/awt/Container$EventTargetFilter;

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/Container;->getMouseEventTarget(IIZLorg/apache/poi/java/awt/Container$EventTargetFilter;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    return-object p1
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

    const/4 v0, 0x4

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

.method public getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->isFocusTraversalPolicyProvider()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->focusTraversalPolicy:Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getFocusCycleRootAncestor()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getDefaultFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getHeavyweightContainer()Lorg/apache/poi/java/awt/Container;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getNativeContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    return-object v0
.end method

.method public getInsets()Lorg/apache/poi/java/awt/Insets;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->insets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()Lorg/apache/poi/java/awt/LayoutManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    return-object v0
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

    const-class v0, Lorg/apache/poi/java/awt/event/ContainerListener;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->containerListener:Lorg/apache/poi/java/awt/event/ContainerListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public getMaximumSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->maxSize:Lorg/apache/poi/java/awt/Dimension;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isMaximumSizeSet()Z

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
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    instance-of v2, v1, Lorg/apache/poi/java/awt/LayoutManager2;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/java/awt/LayoutManager2;

    invoke-interface {v1, p0}, Lorg/apache/poi/java/awt/LayoutManager2;->maximumLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->maxSize:Lorg/apache/poi/java/awt/Dimension;

    goto :goto_1

    :cond_1
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->getMaximumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->maxSize:Lorg/apache/poi/java/awt/Dimension;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_3

    new-instance v1, Lorg/apache/poi/java/awt/Dimension;

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/Dimension;-><init>(Lorg/apache/poi/java/awt/Dimension;)V

    return-object v1

    :cond_3
    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMinimumSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->minimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getMouseEventTarget(IIZ)Lorg/apache/poi/java/awt/Component;
    .locals 6

    sget-object v4, Lorg/apache/poi/java/awt/Container$MouseEventTargetFilter;->FILTER:Lorg/apache/poi/java/awt/Container$EventTargetFilter;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/Container;->getMouseEventTarget(IIZLorg/apache/poi/java/awt/Container$EventTargetFilter;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    return-object p1
.end method

.method public getMousePosition(Z)Lorg/apache/poi/java/awt/Point;
    .locals 3

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/poi/java/awt/Container$2;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Container$2;-><init>(Lorg/apache/poi/java/awt/Container;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/PointerInfo;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component;->findUnderMouseInWindow(Lorg/apache/poi/java/awt/PointerInfo;)Lorg/apache/poi/java/awt/Component;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/poi/java/awt/Container;->isSameOrAncestorOf(Lorg/apache/poi/java/awt/Component;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/PointerInfo;->getLocation()Lorg/apache/poi/java/awt/Point;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->pointRelativeToComponent(Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/Point;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/poi/java/awt/HeadlessException;

    invoke-direct {p1}, Lorg/apache/poi/java/awt/HeadlessException;-><init>()V

    throw p1
.end method

.method public final getOpaqueShape()Lorg/apache/poi/sun/java2d/pipe/Region;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isNonOpaqueForMixing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->hasLightweightDescendants()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/poi/sun/java2d/pipe/Region;->EMPTY_REGION:Lorg/apache/poi/sun/java2d/pipe/Region;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->getOpaqueShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/java2d/pipe/Region;->getUnion(Lorg/apache/poi/sun/java2d/pipe/Region;)Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getNormalShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/java2d/pipe/Region;->getIntersection(Lorg/apache/poi/sun/java2d/pipe/Region;)Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->getOpaqueShape()Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->preferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public final getTraversalRoot()Lorg/apache/poi/java/awt/Container;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Container;->findTraversalRoot()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->getTraversalRoot()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    return-object v0
.end method

.method public final hasHeavyweightDescendants()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    iget v0, p0, Lorg/apache/poi/java/awt/Container;->numOfHWComponents:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasLightweightDescendants()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    iget v0, p0, Lorg/apache/poi/java/awt/Container;->numOfLWComponents:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final increaseComponentCount(Lorg/apache/poi/java/awt/Component;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Lorg/apache/poi/java/awt/Container;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/java/awt/Container;

    iget v2, v1, Lorg/apache/poi/java/awt/Container;->numOfLWComponents:I

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/java/awt/Container;

    iget v1, v1, Lorg/apache/poi/java/awt/Container;->numOfHWComponents:I

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :goto_1
    move-object p1, p0

    :goto_2
    if-eqz p1, :cond_2

    iget v3, p1, Lorg/apache/poi/java/awt/Container;->numOfLWComponents:I

    add-int/2addr v3, v1

    iput v3, p1, Lorg/apache/poi/java/awt/Container;->numOfLWComponents:I

    iget v3, p1, Lorg/apache/poi/java/awt/Container;->numOfHWComponents:I

    add-int/2addr v3, v2

    iput v3, p1, Lorg/apache/poi/java/awt/Container;->numOfHWComponents:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object p1

    goto :goto_2

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Peer does not exist while invoking the increaseComponentCount() method"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public initializeFocusTraversalKeys()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/Set;

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeys:[Ljava/util/Set;

    return-void
.end method

.method public insets()Lorg/apache/poi/java/awt/Insets;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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

.method public invalidate()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    instance-of v1, v0, Lorg/apache/poi/java/awt/LayoutManager2;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/java/awt/LayoutManager2;

    invoke-interface {v0, p0}, Lorg/apache/poi/java/awt/LayoutManager2;->invalidateLayout(Lorg/apache/poi/java/awt/Container;)V

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->invalidate()V

    return-void
.end method

.method public invalidateParent()V
    .locals 1

    sget-boolean v0, Lorg/apache/poi/java/awt/Container;->isJavaAwtSmartInvalidate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->isValidateRoot()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->invalidateParent()V

    :cond_1
    return-void
.end method

.method public invalidateTree()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Component;

    instance-of v3, v2, Lorg/apache/poi/java/awt/Container;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Container;->invalidateTree()V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAncestorOf(Lorg/apache/poi/java/awt/Component;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public isFocusCycleRoot()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Container;->focusCycleRoot:Z

    return v0
.end method

.method public isFocusCycleRoot(Lorg/apache/poi/java/awt/Container;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->isFocusCycleRoot(Lorg/apache/poi/java/awt/Container;)Z

    move-result p1

    return p1
.end method

.method public final isFocusTraversalPolicyProvider()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Container;->focusTraversalPolicyProvider:Z

    return v0
.end method

.method public isFocusTraversalPolicySet()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->focusTraversalPolicy:Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRecursivelyVisibleUpToHeavyweightContainer()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isSameOrAncestorOf(Lorg/apache/poi/java/awt/Component;Z)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Container;->isParentOf(Lorg/apache/poi/java/awt/Component;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isValidateRoot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public layout()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lorg/apache/poi/java/awt/LayoutManager;->layoutContainer(Lorg/apache/poi/java/awt/Container;)V

    :cond_0
    return-void
.end method

.method public lightweightPaint(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->lightweightPaint(Lorg/apache/poi/java/awt/Graphics;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Container;->paintHeavyweightComponents(Lorg/apache/poi/java/awt/Graphics;)V

    return-void
.end method

.method public lightweightPrint(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->lightweightPrint(Lorg/apache/poi/java/awt/Graphics;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Container;->printHeavyweightComponents(Lorg/apache/poi/java/awt/Graphics;)V

    return-void
.end method

.method public list(Ljava/io/PrintStream;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->list(Ljava/io/PrintStream;I)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Component;

    if-eqz v2, :cond_0

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/apache/poi/java/awt/Component;->list(Ljava/io/PrintStream;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public list(Ljava/io/PrintWriter;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->list(Ljava/io/PrintWriter;I)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Component;

    if-eqz v2, :cond_0

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/apache/poi/java/awt/Component;->list(Ljava/io/PrintWriter;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public locate(II)Lorg/apache/poi/java/awt/Component;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/Component;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v4, v4, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-nez v4, :cond_1

    iget v4, v3, Lorg/apache/poi/java/awt/Component;->x:I

    sub-int v4, p1, v4

    iget v5, v3, Lorg/apache/poi/java/awt/Component;->y:I

    sub-int v5, p2, v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/java/awt/Component;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v0

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Component;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v3, v3, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v3, :cond_3

    iget v3, v2, Lorg/apache/poi/java/awt/Component;->x:I

    sub-int v3, p1, v3

    iget v4, v2, Lorg/apache/poi/java/awt/Component;->y:I

    sub-int v4, p2, v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/java/awt/Component;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    monitor-exit v0

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lorg/apache/poi/java/awt/LayoutManager;->minimumLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->minimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->minSize:Lorg/apache/poi/java/awt/Dimension;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_3

    new-instance v1, Lorg/apache/poi/java/awt/Dimension;

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/Dimension;-><init>(Lorg/apache/poi/java/awt/Dimension;)V

    return-object v1

    :cond_3
    return-object v0

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
    sget-object v1, Lorg/apache/poi/java/awt/Container;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; isLightweight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Container;->recursiveHideHeavyweightChildren()V

    :cond_1
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->mixOnHiding(Z)V

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
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/Container;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

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

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->hasHeavyweightDescendants()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/poi/java/awt/Point;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getX()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getY()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getX()I

    move-result v4

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getY()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/apache/poi/java/awt/Point;->translate(II)V

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getContainer()Lorg/apache/poi/java/awt/Container;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/poi/java/awt/Container;->recursiveRelocateHeavyweightChildren(Lorg/apache/poi/java/awt/Point;)V

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->recursiveApplyCurrentShape()V

    :cond_3
    if-nez v1, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->mixOnReshaping()V

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
    sget-object v1, Lorg/apache/poi/java/awt/Container;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

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
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->isRecursivelyVisibleUpToHeavyweightContainer()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Container;->recursiveShowHeavyweightChildren()V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isMixingNeeded()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->hasHeavyweightDescendants()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->recursiveApplyCurrentShape()V

    :cond_4
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->mixOnShowing()V

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
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/Container;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

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
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->hasHeavyweightDescendants()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->recursiveApplyCurrentShape()V

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isNonOpaqueForMixing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->subtractAndApplyShapeBelowMe()V

    :cond_3
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->mixOnValidating()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mixOnZOrderChanging(II)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/Container;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; oldZ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; newZ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    if-ge p2, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->hasHeavyweightDescendants()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->recursiveApplyCurrentShape()V

    :cond_3
    invoke-super {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->mixOnZOrderChanging(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public numListening(J)I
    .locals 6

    invoke-super {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->numListening(J)I

    move-result v0

    const-wide/32 v1, 0x8000

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/poi/java/awt/Container;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v1, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v3, p1, p2}, Lorg/apache/poi/java/awt/Component;->numListening(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/apache/poi/java/awt/Container;->listeningChildren:I

    if-eq p1, v2, :cond_1

    sget-object p1, Lorg/apache/poi/java/awt/Container;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string p2, "Assertion (listeningChildren == sum) failed"

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_1
    iget p1, p0, Lorg/apache/poi/java/awt/Container;->listeningChildren:I

    :goto_1
    add-int/2addr p1, v0

    return p1

    :cond_2
    const-wide/32 v4, 0x10000

    cmp-long v1, p1, v4

    if-nez v1, :cond_5

    sget-object v1, Lorg/apache/poi/java/awt/Container;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v1, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v3, p1, p2}, Lorg/apache/poi/java/awt/Component;->numListening(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    :cond_3
    iget p1, p0, Lorg/apache/poi/java/awt/Container;->listeningBoundsChildren:I

    if-eq p1, v2, :cond_4

    sget-object p1, Lorg/apache/poi/java/awt/Container;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const-string p2, "Assertion (listeningBoundsChildren == sum) failed"

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_4
    iget p1, p0, Lorg/apache/poi/java/awt/Container;->listeningBoundsChildren:I

    goto :goto_1

    :cond_5
    sget-object p1, Lorg/apache/poi/java/awt/Container;->eventLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p1, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "This code must never be reached"

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_6
    return v0
.end method

.method public paint(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Container;->printing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->printingThreads:Ljava/util/Set;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsCallback$PaintCallback;->getInstance()Lorg/apache/poi/java/awt/GraphicsCallback$PaintCallback;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentsSync()[Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/poi/java/awt/GraphicsCallback$PaintCallback;->runComponents([Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Graphics;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public paintComponents(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsCallback$PaintAllCallback;->getInstance()Lorg/apache/poi/java/awt/GraphicsCallback$PaintAllCallback;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentsSync()[Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/poi/java/awt/GraphicsCallback$PaintAllCallback;->runComponents([Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Graphics;I)V

    :cond_0
    return-void
.end method

.method public paintHeavyweightComponents(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsCallback$PaintHeavyweightComponentsCallback;->getInstance()Lorg/apache/poi/java/awt/GraphicsCallback$PaintHeavyweightComponentsCallback;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentsSync()[Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/poi/java/awt/GraphicsCallback$PaintHeavyweightComponentsCallback;->runComponents([Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Graphics;I)V

    :cond_0
    return-void
.end method

.method public paramString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->paramString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",layout="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public postProcessKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Container;->postProcessKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public postsOldMouseEvents()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public preProcessKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Container;->preProcessKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    :cond_0
    return-void
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
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lorg/apache/poi/java/awt/LayoutManager;->preferredLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->preferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->prefSize:Lorg/apache/poi/java/awt/Dimension;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_3

    new-instance v1, Lorg/apache/poi/java/awt/Dimension;

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/Dimension;-><init>(Lorg/apache/poi/java/awt/Dimension;)V

    return-object v1

    :cond_3
    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public print(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v4, p0, Lorg/apache/poi/java/awt/Container;->printingThreads:Ljava/util/Set;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/apache/poi/java/awt/Container;->printingThreads:Ljava/util/Set;

    :cond_0
    iget-object v4, p0, Lorg/apache/poi/java/awt/Container;->printingThreads:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/Container;->printing:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->print(Lorg/apache/poi/java/awt/Graphics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_3
    iget-object v4, p0, Lorg/apache/poi/java/awt/Container;->printingThreads:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->printingThreads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Container;->printing:Z

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsCallback$PrintCallback;->getInstance()Lorg/apache/poi/java/awt/GraphicsCallback$PrintCallback;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentsSync()[Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/poi/java/awt/GraphicsCallback$PrintCallback;->runComponents([Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Graphics;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v4, p0, Lorg/apache/poi/java/awt/Container;->printingThreads:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->printingThreads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Container;->printing:Z

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :catchall_3
    move-exception p1

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public printComponents(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsCallback$PrintAllCallback;->getInstance()Lorg/apache/poi/java/awt/GraphicsCallback$PrintAllCallback;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentsSync()[Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/poi/java/awt/GraphicsCallback$PrintAllCallback;->runComponents([Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Graphics;I)V

    :cond_0
    return-void
.end method

.method public printHeavyweightComponents(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsCallback$PrintHeavyweightComponentsCallback;->getInstance()Lorg/apache/poi/java/awt/GraphicsCallback$PrintHeavyweightComponentsCallback;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentsSync()[Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/poi/java/awt/GraphicsCallback$PrintHeavyweightComponentsCallback;->runComponents([Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Graphics;I)V

    :cond_0
    return-void
.end method

.method public processContainerEvent(Lorg/apache/poi/java/awt/event/ContainerEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->containerListener:Lorg/apache/poi/java/awt/event/ContainerListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/ContainerEvent;->getID()I

    move-result v1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ContainerListener;->componentRemoved(Lorg/apache/poi/java/awt/event/ContainerEvent;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ContainerListener;->componentAdded(Lorg/apache/poi/java/awt/event/ContainerEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/event/ContainerEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/event/ContainerEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Container;->processContainerEvent(Lorg/apache/poi/java/awt/event/ContainerEvent;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public proxyEnableEvents(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v0, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/Container;->proxyEnableEvents(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->dispatcher:Lorg/apache/poi/java/awt/LightweightDispatcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/LightweightDispatcher;->enableEvents(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final recursiveApplyCurrentShape()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Container;->getTopmostComponentIndex()I

    move-result v0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Container;->getBottommostComponentIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/java/awt/Container;->recursiveApplyCurrentShape(II)V

    return-void
.end method

.method public final recursiveApplyCurrentShape(I)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Container;->getBottommostComponentIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/Container;->recursiveApplyCurrentShape(II)V

    return-void
.end method

.method public final recursiveApplyCurrentShape(II)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    sget-object v0, Lorg/apache/poi/java/awt/Container;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; fromZ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; toZ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getLayout()Lorg/apache/poi/java/awt/LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    :goto_0
    if-gt p1, p2, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->applyCurrentShape()V

    :cond_3
    instance-of v1, v0, Lorg/apache/poi/java/awt/Container;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->hasHeavyweightDescendants()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->recursiveApplyCurrentShape()V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final recursiveSubtractAndApplyShape(Lorg/apache/poi/sun/java2d/pipe/Region;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Container;->getTopmostComponentIndex()I

    move-result v0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Container;->getBottommostComponentIndex()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/Container;->recursiveSubtractAndApplyShape(Lorg/apache/poi/sun/java2d/pipe/Region;II)V

    return-void
.end method

.method public final recursiveSubtractAndApplyShape(Lorg/apache/poi/sun/java2d/pipe/Region;I)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Container;->getBottommostComponentIndex()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/Container;->recursiveSubtractAndApplyShape(Lorg/apache/poi/sun/java2d/pipe/Region;II)V

    return-void
.end method

.method public final recursiveSubtractAndApplyShape(Lorg/apache/poi/sun/java2d/pipe/Region;II)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    sget-object v0, Lorg/apache/poi/java/awt/Container;->mixingLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; shape="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; fromZ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; toZ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/sun/java2d/pipe/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getLayout()Lorg/apache/poi/java/awt/LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    :goto_0
    if-gt p2, p3, :cond_6

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->subtractAndApplyShape(Lorg/apache/poi/sun/java2d/pipe/Region;)V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lorg/apache/poi/java/awt/Container;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Container;->hasHeavyweightDescendants()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, p1}, Lorg/apache/poi/java/awt/Container;->recursiveSubtractAndApplyShape(Lorg/apache/poi/sun/java2d/pipe/Region;)V

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public remove(I)V
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-ltz p1, :cond_5

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_5

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/apache/poi/java/awt/Component;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->removeNotify()V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    if-eqz v1, :cond_1

    invoke-interface {v1, v4}, Lorg/apache/poi/java/awt/LayoutManager;->removeLayoutComponent(Lorg/apache/poi/java/awt/Component;)V

    :cond_1
    const-wide/32 v1, 0x8000

    invoke-virtual {v4, v1, v2}, Lorg/apache/poi/java/awt/Component;->numListening(J)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/poi/java/awt/Container;->adjustListeningChildren(JI)V

    const-wide/32 v5, 0x10000

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/java/awt/Component;->numListening(J)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v5, v6, v3}, Lorg/apache/poi/java/awt/Container;->adjustListeningChildren(JI)V

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->countHierarchyMembers()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/java/awt/Container;->adjustDescendants(I)V

    const/4 v3, 0x0

    iput-object v3, v4, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    iget-object v5, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4, v3}, Lorg/apache/poi/java/awt/Component;->setGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    iget-object p1, p0, Lorg/apache/poi/java/awt/Container;->containerListener:Lorg/apache/poi/java/awt/event/ContainerListener;

    if-nez p1, :cond_2

    iget-wide v5, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    const-wide/16 v9, 0x0

    cmp-long p1, v5, v9

    if-nez p1, :cond_2

    invoke-static {v7, v8}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    new-instance p1, Lorg/apache/poi/java/awt/event/ContainerEvent;

    const/16 v3, 0x12d

    invoke-direct {p1, p0, v3, v4}, Lorg/apache/poi/java/awt/event/ContainerEvent;-><init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/Component;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_3
    const/16 v3, 0x578

    const-wide/16 v6, 0x1

    invoke-static {v1, v2}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v8

    move-object v2, v4

    move-object v5, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/java/awt/Component;->createHierarchyEvents(ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;JZ)I

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->updateCursorImmediately()V

    :cond_4
    monitor-exit v0

    return-void

    :cond_5
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Lorg/apache/poi/java/awt/Component;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Container;->remove(I)V

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

.method public removeAll()V
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/apache/poi/java/awt/Container;->listeningChildren:I

    neg-int v1, v1

    const-wide/32 v2, 0x8000

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/poi/java/awt/Container;->adjustListeningChildren(JI)V

    const-wide/32 v4, 0x10000

    iget v1, p0, Lorg/apache/poi/java/awt/Container;->listeningBoundsChildren:I

    neg-int v1, v1

    invoke-virtual {p0, v4, v5, v1}, Lorg/apache/poi/java/awt/Container;->adjustListeningChildren(JI)V

    iget v1, p0, Lorg/apache/poi/java/awt/Container;->descendantsCount:I

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Container;->adjustDescendants(I)V

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/apache/poi/java/awt/Component;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v1, :cond_0

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/Component;->removeNotify()V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    if-eqz v1, :cond_1

    invoke-interface {v1, v6}, Lorg/apache/poi/java/awt/LayoutManager;->removeLayoutComponent(Lorg/apache/poi/java/awt/Component;)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v6, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v6, v1}, Lorg/apache/poi/java/awt/Component;->setGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->containerListener:Lorg/apache/poi/java/awt/event/ContainerListener;

    if-nez v1, :cond_2

    iget-wide v4, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v7, 0x2

    and-long/2addr v4, v7

    const-wide/16 v9, 0x0

    cmp-long v1, v4, v9

    if-nez v1, :cond_2

    invoke-static {v7, v8}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Lorg/apache/poi/java/awt/event/ContainerEvent;

    const/16 v4, 0x12d

    invoke-direct {v1, p0, v4, v6}, Lorg/apache/poi/java/awt/event/ContainerEvent;-><init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/Component;)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Component;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_3
    const/16 v5, 0x578

    const-wide/16 v8, 0x1

    invoke-static {v2, v3}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v10

    move-object v4, v6

    move-object v7, p0

    invoke-virtual/range {v4 .. v10}, Lorg/apache/poi/java/awt/Component;->createHierarchyEvents(ILorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;JZ)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->updateCursorImmediately()V

    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized removeContainerListener(Lorg/apache/poi/java/awt/event/ContainerListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->containerListener:Lorg/apache/poi/java/awt/event/ContainerListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/ContainerListener;Lorg/apache/poi/java/awt/event/ContainerListener;)Lorg/apache/poi/java/awt/event/ContainerListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Container;->containerListener:Lorg/apache/poi/java/awt/event/ContainerListener;
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
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_1

    iget-object v4, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/java/awt/Component;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Lorg/apache/poi/java/awt/Component;->setAutoFocusTransferOnDisposal(Z)V

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->removeNotify()V

    invoke-virtual {v4, v2}, Lorg/apache/poi/java/awt/Component;->setAutoFocusTransferOnDisposal(Z)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->containsFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->isAutoFocusTransferEnabledFor(Lorg/apache/poi/java/awt/Component;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Lorg/apache/poi/java/awt/Component;->transferFocus(Z)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Component;->transferFocusBackward(Z)Z

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->dispatcher:Lorg/apache/poi/java/awt/LightweightDispatcher;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/LightweightDispatcher;->dispose()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/java/awt/Container;->dispatcher:Lorg/apache/poi/java/awt/LightweightDispatcher;

    :cond_3
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->removeNotify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setComponentZOrder(Lorg/apache/poi/java/awt/Component;I)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Container;->getComponentZOrder(Lorg/apache/poi/java/awt/Component;)I

    move-result v2

    if-ne v1, p0, :cond_0

    if-ne p2, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/Container;->checkAdding(Lorg/apache/poi/java/awt/Component;I)V

    if-eqz v1, :cond_1

    invoke-direct {v1, p1, p0, p2}, Lorg/apache/poi/java/awt/Container;->removeDelicately(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;I)Z

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, p1, v1, p2}, Lorg/apache/poi/java/awt/Container;->addDelicately(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;I)V

    if-nez v3, :cond_2

    const/4 v1, -0x1

    if-eq v2, v1, :cond_2

    invoke-virtual {p1, v2, p2}, Lorg/apache/poi/java/awt/Component;->mixOnZOrderChanging(II)V

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

.method public setFocusCycleRoot(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Container;->focusCycleRoot:Z

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Container;->focusCycleRoot:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "focusCycleRoot"

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

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->setFocusTraversalKeys_NoIDCheck(ILjava/util/Set;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid focus traversal key identifier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFocusTraversalPolicy(Lorg/apache/poi/java/awt/FocusTraversalPolicy;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Container;->focusTraversalPolicy:Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    iput-object p1, p0, Lorg/apache/poi/java/awt/Container;->focusTraversalPolicy:Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "focusTraversalPolicy"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setFocusTraversalPolicyProvider(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Container;->focusTraversalPolicyProvider:Z

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Container;->focusTraversalPolicyProvider:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "focusTraversalPolicyProvider"

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

.method public setFont(Lorg/apache/poi/java/awt/Font;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getFont()Lorg/apache/poi/java/awt/Font;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->setFont(Lorg/apache/poi/java/awt/Font;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getFont()Lorg/apache/poi/java/awt/Font;

    move-result-object p1

    if-eq p1, v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Font;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->invalidateTree()V

    :cond_1
    return-void
.end method

.method public setLayout(Lorg/apache/poi/java/awt/LayoutManager;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    return-void
.end method

.method public transferFocusDownCycle()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setGlobalCurrentFocusCycleRoot(Lorg/apache/poi/java/awt/Container;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;->getDefaultComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->TRAVERSAL_DOWN:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Component;->requestFocus(Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    :cond_0
    return-void
.end method

.method public update(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v0, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v1, p0, Lorg/apache/poi/java/awt/Component;->height:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Lorg/apache/poi/java/awt/Graphics;->clearRect(IIII)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Container;->paint(Lorg/apache/poi/java/awt/Graphics;)V

    :cond_1
    return-void
.end method

.method public updateGraphicsData(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->updateGraphicsData(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Z

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Component;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lorg/apache/poi/java/awt/Component;->updateGraphicsData(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public validate()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lorg/apache/poi/java/awt/Container;->descendUnconditionallyWhenValidating:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    instance-of v3, v1, Lorg/apache/poi/java/awt/peer/ContainerPeer;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/java/awt/peer/ContainerPeer;

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/apache/poi/java/awt/peer/ContainerPeer;->beginValidate()V

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->validateTree()V

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/apache/poi/java/awt/peer/ContainerPeer;->endValidate()V

    sget-boolean v1, Lorg/apache/poi/java/awt/Container;->descendUnconditionallyWhenValidating:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->updateCursorImmediately()V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public validateTree()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->checkTreeLock()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/apache/poi/java/awt/Container;->descendUnconditionallyWhenValidating:Z

    if-eqz v0, :cond_6

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/ContainerPeer;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/java/awt/peer/ContainerPeer;

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ContainerPeer;->beginLayout()V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->doLayout()V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container;->component:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Component;

    instance-of v2, v1, Lorg/apache/poi/java/awt/Container;

    if-eqz v2, :cond_4

    instance-of v2, v1, Lorg/apache/poi/java/awt/Window;

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lorg/apache/poi/java/awt/Container;->descendUnconditionallyWhenValidating:Z

    if-eqz v2, :cond_4

    :cond_3
    check-cast v1, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Container;->validateTree()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->validate()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/ContainerPeer;

    if-eqz v1, :cond_6

    check-cast v0, Lorg/apache/poi/java/awt/peer/ContainerPeer;

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ContainerPeer;->endLayout()V

    :cond_6
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->validate()V

    return-void
.end method

.method public final validateUnconditionally()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lorg/apache/poi/java/awt/Container;->descendUnconditionallyWhenValidating:Z

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->validate()V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v1, Lorg/apache/poi/java/awt/peer/ContainerPeer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v2, Lorg/apache/poi/java/awt/Container;->descendUnconditionallyWhenValidating:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->updateCursorImmediately()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
