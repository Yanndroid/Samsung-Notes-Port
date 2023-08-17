.class public Lorg/apache/poi/java/awt/ScrollPane;
.super Lorg/apache/poi/java/awt/Container;
.source "SourceFile"

# interfaces
.implements Ljavax/accessibility/Accessible;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/ScrollPane$AccessibleAWTScrollPane;,
        Lorg/apache/poi/java/awt/ScrollPane$PeerFixer;
    }
.end annotation


# static fields
.field public static final SCROLLBARS_ALWAYS:I = 0x1

.field public static final SCROLLBARS_AS_NEEDED:I = 0x0

.field public static final SCROLLBARS_NEVER:I = 0x2

.field private static final base:Ljava/lang/String; = "scrollpane"

.field private static final defaultWheelScroll:Z = true

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = 0x6e6b8e7e8ae24b83L


# instance fields
.field private hAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

.field private scrollbarDisplayPolicy:I

.field private vAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

.field private wheelScrollingEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/ScrollPane;->initIDs()V

    :cond_0
    const/4 v0, 0x0

    sput v0, Lorg/apache/poi/java/awt/ScrollPane;->nameCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/ScrollPane;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation runtime Ljava/beans/ConstructorProperties;
        value = {
            "scrollbarDisplayPolicy"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Container;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/ScrollPane;->wheelScrollingEnabled:Z

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/java/awt/Container;->layoutMgr:Lorg/apache/poi/java/awt/LayoutManager;

    const/16 v1, 0x64

    iput v1, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iput v1, p0, Lorg/apache/poi/java/awt/Component;->height:I

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal scrollbar display policy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/poi/java/awt/ScrollPane;->scrollbarDisplayPolicy:I

    new-instance p1, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    new-instance v1, Lorg/apache/poi/java/awt/ScrollPane$PeerFixer;

    invoke-direct {v1, p0, p0}, Lorg/apache/poi/java/awt/ScrollPane$PeerFixer;-><init>(Lorg/apache/poi/java/awt/ScrollPane;Lorg/apache/poi/java/awt/ScrollPane;)V

    invoke-direct {p1, p0, v1, v0}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;-><init>(Lorg/apache/poi/java/awt/ScrollPane;Lorg/apache/poi/java/awt/event/AdjustmentListener;I)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/ScrollPane;->vAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    new-instance p1, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    new-instance v1, Lorg/apache/poi/java/awt/ScrollPane$PeerFixer;

    invoke-direct {v1, p0, p0}, Lorg/apache/poi/java/awt/ScrollPane$PeerFixer;-><init>(Lorg/apache/poi/java/awt/ScrollPane;Lorg/apache/poi/java/awt/ScrollPane;)V

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;-><init>(Lorg/apache/poi/java/awt/ScrollPane;Lorg/apache/poi/java/awt/event/AdjustmentListener;I)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/ScrollPane;->hAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/ScrollPane;->setWheelScrollingEnabled(Z)V

    return-void
.end method

.method private addToPanel(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;I)V
    .locals 2

    new-instance v0, Lorg/apache/poi/java/awt/Panel;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/Panel;-><init>()V

    new-instance v1, Lorg/apache/poi/java/awt/BorderLayout;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Container;->setLayout(Lorg/apache/poi/java/awt/LayoutManager;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Container;->add(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;

    invoke-super {p0, v0, p2, p3}, Lorg/apache/poi/java/awt/Container;->addImpl(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->validate()V

    return-void
.end method

.method private static native initIDs()V
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object p1

    const-string v0, "scrollbarDisplayPolicy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/java/awt/ScrollPane;->scrollbarDisplayPolicy:I

    const-string v0, "hAdjustable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    iput-object v0, p0, Lorg/apache/poi/java/awt/ScrollPane;->hAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    const-string/jumbo v0, "vAdjustable"

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    iput-object v0, p0, Lorg/apache/poi/java/awt/ScrollPane;->vAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    const-string/jumbo v0, "wheelScrollingEnabled"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/ScrollPane;->wheelScrollingEnabled:Z

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public final addImpl(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;I)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Container;->remove(I)V

    :cond_0
    if-gtz p3, :cond_2

    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->isLightweightOrUnknown(Lorg/apache/poi/java/awt/Component;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/Container;->addImpl(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/ScrollPane;->addToPanel(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;I)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "position greater than 0"

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
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/ScrollPane;->vAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->getValue()I

    move-result v1

    iget-object v3, p0, Lorg/apache/poi/java/awt/ScrollPane;->hAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->getValue()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/java/awt/ScrollPane;->vAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    invoke-virtual {v4, v2}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->setValue(I)V

    iget-object v4, p0, Lorg/apache/poi/java/awt/ScrollPane;->hAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    invoke-virtual {v4, v2}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->setValue(I)V

    move v2, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createScrollPane(Lorg/apache/poi/java/awt/ScrollPane;)Lorg/apache/poi/java/awt/peer/ScrollPanePeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    :cond_1
    invoke-super {p0}, Lorg/apache/poi/java/awt/Container;->addNotify()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/java/awt/ScrollPane;->vAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->setValue(I)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/ScrollPane;->hAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    invoke-virtual {v1, v3}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->setValue(I)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public autoProcessMouseWheel(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/ScrollPane;->processMouseWheelEvent(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)V

    return-void
.end method

.method public calculateChildSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v1

    iget v2, v0, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, v1, Lorg/apache/poi/java/awt/Insets;->left:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v0, v0, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v1, v1, Lorg/apache/poi/java/awt/Insets;->top:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/java/awt/Dimension;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/apache/poi/java/awt/Dimension;-><init>(Lorg/apache/poi/java/awt/Dimension;)V

    iget v3, p0, Lorg/apache/poi/java/awt/ScrollPane;->scrollbarDisplayPolicy:I

    const/4 v5, 0x1

    if-nez v3, :cond_2

    iget v3, v4, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-le v3, v0, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget v6, v4, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-le v6, v2, :cond_1

    move v1, v5

    :cond_1
    move v5, v1

    move v1, v3

    goto :goto_1

    :cond_2
    if-ne v3, v5, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/ScrollPane;->getVScrollbarWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/ScrollPane;->getHScrollbarHeight()I

    move-result v6

    if-eqz v1, :cond_4

    sub-int/2addr v2, v3

    :cond_4
    if-eqz v5, :cond_5

    sub-int/2addr v0, v6

    :cond_5
    iget v1, v4, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-ge v1, v2, :cond_6

    iput v2, v4, Lorg/apache/poi/java/awt/Dimension;->width:I

    :cond_6
    iget v1, v4, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-ge v1, v0, :cond_7

    iput v0, v4, Lorg/apache/poi/java/awt/Dimension;->height:I

    :cond_7
    return-object v4
.end method

.method public constructComponentName()Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/ScrollPane;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollpane"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/ScrollPane;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/ScrollPane;->nameCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method public doLayout()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/ScrollPane;->layout()V

    return-void
.end method

.method public eventTypeEnabled(I)Z
    .locals 1

    const/16 v0, 0x1fb

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/ScrollPane;->isWheelScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->eventTypeEnabled(I)Z

    move-result p1

    return p1
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/ScrollPane$AccessibleAWTScrollPane;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/ScrollPane$AccessibleAWTScrollPane;-><init>(Lorg/apache/poi/java/awt/ScrollPane;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getHAdjustable()Lorg/apache/poi/java/awt/Adjustable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/ScrollPane;->hAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    return-object v0
.end method

.method public getHScrollbarHeight()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/ScrollPane;->scrollbarDisplayPolicy:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/ScrollPanePeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ScrollPanePeer;->getHScrollbarHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getScrollPosition()Lorg/apache/poi/java/awt/Point;
    .locals 4
    .annotation runtime Ljava/beans/Transient;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/poi/java/awt/Point;

    iget-object v2, p0, Lorg/apache/poi/java/awt/ScrollPane;->hAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->getValue()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/java/awt/ScrollPane;->vAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->getValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "child is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getScrollbarDisplayPolicy()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/ScrollPane;->scrollbarDisplayPolicy:I

    return v0
.end method

.method public getVAdjustable()Lorg/apache/poi/java/awt/Adjustable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/ScrollPane;->vAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    return-object v0
.end method

.method public getVScrollbarWidth()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/ScrollPane;->scrollbarDisplayPolicy:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/ScrollPanePeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ScrollPanePeer;->getVScrollbarWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getViewportSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/java/awt/Dimension;

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v3, v0, Lorg/apache/poi/java/awt/Insets;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Lorg/apache/poi/java/awt/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/apache/poi/java/awt/Component;->height:I

    iget v4, v0, Lorg/apache/poi/java/awt/Insets;->top:I

    sub-int/2addr v3, v4

    iget v0, v0, Lorg/apache/poi/java/awt/Insets;->bottom:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object v1
.end method

.method public isWheelScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/ScrollPane;->wheelScrollingEnabled:Z

    return v0
.end method

.method public layout()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/ScrollPane;->getScrollPosition()Lorg/apache/poi/java/awt/Point;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/ScrollPane;->calculateChildSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/ScrollPane;->getViewportSize()Lorg/apache/poi/java/awt/Dimension;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v4

    iget v5, v4, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v6, v2, Lorg/apache/poi/java/awt/Point;->x:I

    sub-int/2addr v5, v6

    iget v4, v4, Lorg/apache/poi/java/awt/Insets;->top:I

    iget v2, v2, Lorg/apache/poi/java/awt/Point;->y:I

    sub-int/2addr v4, v2

    iget v2, v3, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v6, v3, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-virtual {v1, v5, v4, v2, v6}, Lorg/apache/poi/java/awt/Component;->reshape(IIII)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/ScrollPanePeer;

    if-eqz v1, :cond_1

    iget v2, v3, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v4, v3, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-interface {v1, v2, v4}, Lorg/apache/poi/java/awt/peer/ScrollPanePeer;->childResized(II)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/ScrollPane;->getViewportSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/java/awt/ScrollPane;->hAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    iget v4, v3, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v5, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    invoke-virtual {v2, v0, v4, v5}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->setSpan(III)V

    iget-object v2, p0, Lorg/apache/poi/java/awt/ScrollPane;->vAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    iget v3, v3, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v1, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-virtual {v2, v0, v3, v1}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->setSpan(III)V

    return-void
.end method

.method public paramString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lorg/apache/poi/java/awt/ScrollPane;->scrollbarDisplayPolicy:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "invalid display policy"

    goto :goto_0

    :cond_0
    const-string v0, "never"

    goto :goto_0

    :cond_1
    const-string v0, "always"

    goto :goto_0

    :cond_2
    const-string v0, "as-needed"

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/ScrollPane;->getScrollPosition()Lorg/apache/poi/java/awt/Point;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/apache/poi/java/awt/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/poi/java/awt/Container;->paramString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",ScrollPosition=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/apache/poi/java/awt/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",Insets=("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lorg/apache/poi/java/awt/Insets;->top:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lorg/apache/poi/java/awt/Insets;->left:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lorg/apache/poi/java/awt/Insets;->bottom:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lorg/apache/poi/java/awt/Insets;->right:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ScrollbarDisplayPolicy="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",wheelScrollingEnabled="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/ScrollPane;->isWheelScrollingEnabled()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printComponents(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getLocation()Lorg/apache/poi/java/awt/Point;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/ScrollPane;->getViewportSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Graphics;->create()Lorg/apache/poi/java/awt/Graphics;

    move-result-object p1

    :try_start_0
    iget v4, v3, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v3, v3, Lorg/apache/poi/java/awt/Insets;->top:I

    iget v5, v2, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v2, v2, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-virtual {p1, v4, v3, v5, v2}, Lorg/apache/poi/java/awt/Graphics;->clipRect(IIII)V

    iget v2, v1, Lorg/apache/poi/java/awt/Point;->x:I

    iget v1, v1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {p1, v2, v1}, Lorg/apache/poi/java/awt/Graphics;->translate(II)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->printAll(Lorg/apache/poi/java/awt/Graphics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Graphics;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Graphics;->dispose()V

    throw v0
.end method

.method public processMouseWheelEvent(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/ScrollPane;->isWheelScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/poi/sun/awt/ScrollPaneWheelScroller;->handleWheelScrolling(Lorg/apache/poi/java/awt/ScrollPane;Lorg/apache/poi/java/awt/event/MouseWheelEvent;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/MouseWheelEvent;->consume()V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->processMouseWheelEvent(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)V

    return-void
.end method

.method public final setLayout(Lorg/apache/poi/java/awt/LayoutManager;)V
    .locals 1

    new-instance p1, Lorg/apache/poi/java/awt/AWTError;

    const-string v0, "ScrollPane controls layout"

    invoke-direct {p1, v0}, Lorg/apache/poi/java/awt/AWTError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScrollPosition(II)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/ScrollPane;->hAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    invoke-virtual {v1, p1}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->setValue(I)V

    iget-object p1, p0, Lorg/apache/poi/java/awt/ScrollPane;->vAdjustable:Lorg/apache/poi/java/awt/ScrollPaneAdjustable;

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->setValue(I)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "child is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setScrollPosition(Lorg/apache/poi/java/awt/Point;)V
    .locals 1

    iget v0, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/java/awt/ScrollPane;->setScrollPosition(II)V

    return-void
.end method

.method public setWheelScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/ScrollPane;->wheelScrollingEnabled:Z

    return-void
.end method
