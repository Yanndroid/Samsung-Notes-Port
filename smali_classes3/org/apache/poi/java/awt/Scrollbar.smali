.class public Lorg/apache/poi/java/awt/Scrollbar;
.super Lorg/apache/poi/java/awt/Component;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Adjustable;
.implements Ljavax/accessibility/Accessible;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Scrollbar$AccessibleAWTScrollBar;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final base:Ljava/lang/String; = "scrollbar"

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = 0x754a5ade9d4aa18fL


# instance fields
.field public transient adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;

.field public transient isAdjusting:Z

.field public lineIncrement:I

.field public maximum:I

.field public minimum:I

.field public orientation:I

.field public pageIncrement:I

.field private scrollbarSerializedDataVersion:I

.field public value:I

.field public visibleAmount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Scrollbar;->initIDs()V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/16 v5, 0x64

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/Scrollbar;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/16 v5, 0x64

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/Scrollbar;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->lineIncrement:I

    const/16 v1, 0xa

    iput v1, p0, Lorg/apache/poi/java/awt/Scrollbar;->pageIncrement:I

    iput v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->scrollbarSerializedDataVersion:I

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal scrollbar orientation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/poi/java/awt/Scrollbar;->orientation:I

    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/poi/java/awt/Scrollbar;->setValues(IIII)V

    return-void
.end method

.method private static native initIDs()V
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adjustmentL"

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/AdjustmentListener;

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/event/AdjustmentListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Scrollbar;->addAdjustmentListener(Lorg/apache/poi/java/awt/event/AdjustmentListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;

    const-string v1, "adjustmentL"

    invoke-static {p1, v1, v0}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addAdjustmentListener(Lorg/apache/poi/java/awt/event/AdjustmentListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/AdjustmentListener;Lorg/apache/poi/java/awt/event/AdjustmentListener;)Lorg/apache/poi/java/awt/event/AdjustmentListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Scrollbar;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;

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

.method public addNotify()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createScrollbar(Lorg/apache/poi/java/awt/Scrollbar;)Lorg/apache/poi/java/awt/peer/ScrollbarPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->addNotify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructComponentName()Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/Scrollbar;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollbar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/Scrollbar;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/Scrollbar;->nameCounter:I

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

.method public eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 4

    iget v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->id:I

    const/16 v1, 0x259

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/Scrollbar;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/Scrollbar$AccessibleAWTScrollBar;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Scrollbar$AccessibleAWTScrollBar;-><init>(Lorg/apache/poi/java/awt/Scrollbar;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public declared-synchronized getAdjustmentListeners()[Lorg/apache/poi/java/awt/event/AdjustmentListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/AdjustmentListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Scrollbar;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/AdjustmentListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/AdjustmentListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBlockIncrement()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Scrollbar;->getPageIncrement()I

    move-result v0

    return v0
.end method

.method public getLineIncrement()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->lineIncrement:I

    return v0
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

    const-class v0, Lorg/apache/poi/java/awt/event/AdjustmentListener;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->maximum:I

    return v0
.end method

.method public getMinimum()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->minimum:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->orientation:I

    return v0
.end method

.method public getPageIncrement()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->pageIncrement:I

    return v0
.end method

.method public getUnitIncrement()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Scrollbar;->getLineIncrement()I

    move-result v0

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->value:I

    return v0
.end method

.method public getValueIsAdjusting()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->isAdjusting:Z

    return v0
.end method

.method public getVisible()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->visibleAmount:I

    return v0
.end method

.method public getVisibleAmount()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Scrollbar;->getVisible()I

    move-result v0

    return v0
.end method

.method public paramString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Scrollbar;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",vis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Scrollbar;->visibleAmount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Scrollbar;->minimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Scrollbar;->maximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Scrollbar;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, ",vert"

    goto :goto_0

    :cond_0
    const-string v1, ",horz"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isAdjusting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Scrollbar;->isAdjusting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processAdjustmentEvent(Lorg/apache/poi/java/awt/event/AdjustmentEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/AdjustmentListener;->adjustmentValueChanged(Lorg/apache/poi/java/awt/event/AdjustmentEvent;)V

    :cond_0
    return-void
.end method

.method public processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/event/AdjustmentEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/event/AdjustmentEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Scrollbar;->processAdjustmentEvent(Lorg/apache/poi/java/awt/event/AdjustmentEvent;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public declared-synchronized removeAdjustmentListener(Lorg/apache/poi/java/awt/event/AdjustmentListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/AdjustmentListener;Lorg/apache/poi/java/awt/event/AdjustmentListener;)Lorg/apache/poi/java/awt/event/AdjustmentListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Scrollbar;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBlockIncrement(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Scrollbar;->setPageIncrement(I)V

    return-void
.end method

.method public declared-synchronized setLineIncrement(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->lineIncrement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput p1, p0, Lorg/apache/poi/java/awt/Scrollbar;->lineIncrement:I

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/ScrollbarPeer;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ScrollbarPeer;->setLineIncrement(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMaximum(I)V
    .locals 3

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const p1, -0x7fffffff

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->minimum:I

    if-lt v0, p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->minimum:I

    :cond_1
    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->value:I

    iget v1, p0, Lorg/apache/poi/java/awt/Scrollbar;->visibleAmount:I

    iget v2, p0, Lorg/apache/poi/java/awt/Scrollbar;->minimum:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/poi/java/awt/Scrollbar;->setValues(IIII)V

    return-void
.end method

.method public setMinimum(I)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->value:I

    iget v1, p0, Lorg/apache/poi/java/awt/Scrollbar;->visibleAmount:I

    iget v2, p0, Lorg/apache/poi/java/awt/Scrollbar;->maximum:I

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/poi/java/awt/Scrollbar;->setValues(IIII)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/apache/poi/java/awt/Scrollbar;->orientation:I

    if-ne p1, v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal scrollbar orientation"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput p1, p0, Lorg/apache/poi/java/awt/Scrollbar;->orientation:I

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->removeNotify()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Scrollbar;->addNotify()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidate()V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-eqz v0, :cond_6

    const-string v2, "AccessibleState"

    if-ne p1, v1, :cond_4

    sget-object v3, Ljavax/accessibility/AccessibleState;->HORIZONTAL:Ljavax/accessibility/AccessibleState;

    goto :goto_1

    :cond_4
    sget-object v3, Ljavax/accessibility/AccessibleState;->VERTICAL:Ljavax/accessibility/AccessibleState;

    :goto_1
    if-ne p1, v1, :cond_5

    sget-object p1, Ljavax/accessibility/AccessibleState;->VERTICAL:Ljavax/accessibility/AccessibleState;

    goto :goto_2

    :cond_5
    sget-object p1, Ljavax/accessibility/AccessibleState;->HORIZONTAL:Ljavax/accessibility/AccessibleState;

    :goto_2
    invoke-virtual {v0, v2, v3, p1}, Ljavax/accessibility/AccessibleContext;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setPageIncrement(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->pageIncrement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput p1, p0, Lorg/apache/poi/java/awt/Scrollbar;->pageIncrement:I

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/ScrollbarPeer;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/ScrollbarPeer;->setPageIncrement(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUnitIncrement(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Scrollbar;->setLineIncrement(I)V

    return-void
.end method

.method public setValue(I)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->visibleAmount:I

    iget v1, p0, Lorg/apache/poi/java/awt/Scrollbar;->minimum:I

    iget v2, p0, Lorg/apache/poi/java/awt/Scrollbar;->maximum:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/poi/java/awt/Scrollbar;->setValues(IIII)V

    return-void
.end method

.method public setValueIsAdjusting(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->isAdjusting:Z

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Scrollbar;->isAdjusting:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-eqz v1, :cond_2

    const-string v2, "AccessibleState"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Ljavax/accessibility/AccessibleState;->BUSY:Ljavax/accessibility/AccessibleState;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz p1, :cond_1

    sget-object v3, Ljavax/accessibility/AccessibleState;->BUSY:Ljavax/accessibility/AccessibleState;

    :cond_1
    invoke-virtual {v1, v2, v0, v3}, Ljavax/accessibility/AccessibleContext;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setValues(IIII)V
    .locals 5

    monitor-enter p0

    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    const p3, 0x7ffffffe

    :cond_0
    if-gt p4, p3, :cond_1

    add-int/lit8 p4, p3, 0x1

    :cond_1
    int-to-long v0, p4

    int-to-long v2, p3

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    long-to-int p4, v2

    add-int/2addr p4, p3

    move-wide v0, v2

    :cond_2
    long-to-int v0, v0

    if-le p2, v0, :cond_3

    move p2, v0

    :cond_3
    const/4 v0, 0x1

    if-ge p2, v0, :cond_4

    move p2, v0

    :cond_4
    if-ge p1, p3, :cond_5

    move p1, p3

    :cond_5
    sub-int v0, p4, p2

    if-le p1, v0, :cond_6

    move p1, v0

    :cond_6
    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->value:I

    iput p1, p0, Lorg/apache/poi/java/awt/Scrollbar;->value:I

    iput p2, p0, Lorg/apache/poi/java/awt/Scrollbar;->visibleAmount:I

    iput p3, p0, Lorg/apache/poi/java/awt/Scrollbar;->minimum:I

    iput p4, p0, Lorg/apache/poi/java/awt/Scrollbar;->maximum:I

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/ScrollbarPeer;

    if-eqz v1, :cond_7

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/peer/ScrollbarPeer;->setValues(IIII)V

    :cond_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_8

    iget-object p2, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-eqz p2, :cond_8

    const-string p3, "AccessibleValue"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p4, p1}, Ljavax/accessibility/AccessibleContext;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVisibleAmount(I)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/Scrollbar;->value:I

    iget v1, p0, Lorg/apache/poi/java/awt/Scrollbar;->minimum:I

    iget v2, p0, Lorg/apache/poi/java/awt/Scrollbar;->maximum:I

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/apache/poi/java/awt/Scrollbar;->setValues(IIII)V

    return-void
.end method
