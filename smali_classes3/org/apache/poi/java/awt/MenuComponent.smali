.class public abstract Lorg/apache/poi/java/awt/MenuComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;
    }
.end annotation


# static fields
.field public static final actionListenerK:Ljava/lang/String; = "actionL"

.field public static final itemListenerK:Ljava/lang/String; = "itemL"

.field private static final serialVersionUID:J = -0x3ef650a7cb5ba36bL


# instance fields
.field private volatile transient acc:Ljava/security/AccessControlContext;

.field public accessibleContext:Ljavax/accessibility/AccessibleContext;

.field public transient appContext:Lorg/apache/poi/sun/awt/AppContext;

.field public font:Lorg/apache/poi/java/awt/Font;

.field private name:Ljava/lang/String;

.field private nameExplicitlySet:Z

.field public newEventsOnly:Z

.field public transient parent:Lorg/apache/poi/java/awt/MenuContainer;

.field public transient peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/MenuComponent;->initIDs()V

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/MenuComponent$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/MenuComponent$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setMenuComponentAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$MenuComponentAccessor;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->nameExplicitlySet:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->newEventsOnly:Z

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->acc:Ljava/security/AccessControlContext;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    return-void
.end method

.method private static native initIDs()V
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->acc:Ljava/security/AccessControlContext;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/MenuComponent;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    return-void
.end method


# virtual methods
.method public constructComponentName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/MenuComponent;->dispatchEventImpl(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public dispatchEventImpl(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/java/awt/EventQueue;->setCurrentEventAndMostRecentTime(Lorg/apache/poi/java/awt/AWTEvent;)V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Toolkit;->notifyAWTEventListeners(Lorg/apache/poi/java/awt/AWTEvent;)V

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->newEventsOnly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/apache/poi/java/awt/MenuComponent;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/java/awt/MenuComponent;

    iget-boolean v0, v0, Lorg/apache/poi/java/awt/MenuComponent;->newEventsOnly:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->convertToOld()Lorg/apache/poi/java/awt/Event;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/MenuComponent;->postEvent(Lorg/apache/poi/java/awt/Event;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/MenuComponent;->eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/MenuComponent;->processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/java/awt/event/ActionEvent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/AWTEvent;->setSource(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    check-cast v0, Lorg/apache/poi/java/awt/MenuComponent;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/MenuComponent;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getAccessControlContext()Ljava/security/AccessControlContext;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->acc:Ljava/security/AccessControlContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->acc:Ljava/security/AccessControlContext;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MenuComponent is missing AccessControlContext"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccessibleChildIndex(Lorg/apache/poi/java/awt/MenuComponent;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getAccessibleIndexInParent()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    instance-of v1, v0, Lorg/apache/poi/java/awt/MenuComponent;

    if-nez v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    check-cast v0, Lorg/apache/poi/java/awt/MenuComponent;

    invoke-virtual {v0, p0}, Lorg/apache/poi/java/awt/MenuComponent;->getAccessibleChildIndex(Lorg/apache/poi/java/awt/MenuComponent;)I

    move-result v0

    return v0
.end method

.method public getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;
    .locals 1

    new-instance v0, Ljavax/accessibility/AccessibleStateSet;

    invoke-direct {v0}, Ljavax/accessibility/AccessibleStateSet;-><init>()V

    return-object v0
.end method

.method public getFont()Lorg/apache/poi/java/awt/Font;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->font:Lorg/apache/poi/java/awt/Font;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/java/awt/MenuContainer;->getFont()Lorg/apache/poi/java/awt/Font;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFont_NoClientCode()Lorg/apache/poi/java/awt/Font;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->font:Lorg/apache/poi/java/awt/Font;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    if-eqz v1, :cond_2

    instance-of v2, v1, Lorg/apache/poi/java/awt/Component;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getFont_NoClientCode()Lorg/apache/poi/java/awt/Font;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/apache/poi/java/awt/MenuComponent;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/apache/poi/java/awt/MenuComponent;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/MenuComponent;->getFont_NoClientCode()Lorg/apache/poi/java/awt/Font;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->nameExplicitlySet:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->nameExplicitlySet:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->constructComponentName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->name:Ljava/lang/String;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/java/awt/MenuContainer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getParent_NoClientCode()Lorg/apache/poi/java/awt/MenuContainer;

    move-result-object v0

    return-object v0
.end method

.method public final getParent_NoClientCode()Lorg/apache/poi/java/awt/MenuContainer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    return-object v0
.end method

.method public getPeer()Lorg/apache/poi/java/awt/peer/MenuComponentPeer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    return-object v0
.end method

.method public final getTreeLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Component;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public paramString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public postEvent(Lorg/apache/poi/java/awt/Event;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/MenuContainer;->postEvent(Lorg/apache/poi/java/awt/Event;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 0

    return-void
.end method

.method public removeNotify()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lorg/apache/poi/java/awt/EventQueue;->removeSourceEvents(Ljava/lang/Object;Z)V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    invoke-interface {v1}, Lorg/apache/poi/java/awt/peer/MenuComponentPeer;->dispose()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFont(Lorg/apache/poi/java/awt/Font;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/java/awt/MenuComponent;->font:Lorg/apache/poi/java/awt/Font;

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent;->peer:Lorg/apache/poi/java/awt/peer/MenuComponentPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/MenuComponentPeer;->setFont(Lorg/apache/poi/java/awt/Font;)V

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/MenuComponent;->name:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/MenuComponent;->nameExplicitlySet:Z

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

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/MenuComponent;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
