.class public Lorg/apache/poi/java/awt/ScrollPaneAdjustable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Adjustable;
.implements Ljava/io/Serializable;


# static fields
.field private static final SCROLLPANE_ONLY:Ljava/lang/String; = "Can be set by scrollpane only"

.field private static final serialVersionUID:J = -0x2ea036e7c1afc477L


# instance fields
.field private adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;

.field private blockIncrement:I

.field private transient isAdjusting:Z

.field private maximum:I

.field private minimum:I

.field private orientation:I

.field private sp:Lorg/apache/poi/java/awt/ScrollPane;

.field private unitIncrement:I

.field private value:I

.field private visibleAmount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->initIDs()V

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setScrollPaneAdjustableAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$ScrollPaneAdjustableAccessor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/ScrollPane;Lorg/apache/poi/java/awt/event/AdjustmentListener;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->unitIncrement:I

    iput v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->blockIncrement:I

    iput-object p1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->sp:Lorg/apache/poi/java/awt/ScrollPane;

    iput p3, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->orientation:I

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->addAdjustmentListener(Lorg/apache/poi/java/awt/event/AdjustmentListener;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/java/awt/ScrollPaneAdjustable;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->setTypedValue(II)V

    return-void
.end method

.method private static native initIDs()V
.end method

.method private setTypedValue(II)V
    .locals 7

    iget v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->minimum:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->maximum:I

    iget v1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->visibleAmount:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->value:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->value:I

    new-instance p1, Lorg/apache/poi/java/awt/event/AdjustmentEvent;

    const/16 v3, 0x259

    iget v5, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->value:I

    iget-boolean v6, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->isAdjusting:Z

    move-object v1, p1

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/java/awt/event/AdjustmentEvent;-><init>(Lorg/apache/poi/java/awt/Adjustable;IIIZ)V

    iget-object p2, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;

    invoke-interface {p2, p1}, Lorg/apache/poi/java/awt/event/AdjustmentListener;->adjustmentValueChanged(Lorg/apache/poi/java/awt/event/AdjustmentEvent;)V

    :cond_0
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
    iget-object v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/AdjustmentListener;Lorg/apache/poi/java/awt/event/AdjustmentListener;)Lorg/apache/poi/java/awt/event/AdjustmentListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAdjustmentListeners()[Lorg/apache/poi/java/awt/event/AdjustmentListener;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;

    const-class v1, Lorg/apache/poi/java/awt/event/AdjustmentListener;

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

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

    iget v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->blockIncrement:I

    return v0
.end method

.method public getMaximum()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->maximum:I

    return v0
.end method

.method public getMinimum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->orientation:I

    return v0
.end method

.method public getUnitIncrement()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->unitIncrement:I

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->value:I

    return v0
.end method

.method public getValueIsAdjusting()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->isAdjusting:Z

    return v0
.end method

.method public getVisibleAmount()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->visibleAmount:I

    return v0
.end method

.method public paramString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "vertical,"

    goto :goto_0

    :cond_0
    const-string v1, "horizontal,"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[0.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->maximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",vis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->visibleAmount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->unitIncrement:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",block="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->blockIncrement:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isAdjusting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->isAdjusting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized removeAdjustmentListener(Lorg/apache/poi/java/awt/event/AdjustmentListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/AdjustmentListener;Lorg/apache/poi/java/awt/event/AdjustmentListener;)Lorg/apache/poi/java/awt/event/AdjustmentListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBlockIncrement(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->blockIncrement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMaximum(I)V
    .locals 1

    new-instance p1, Lorg/apache/poi/java/awt/AWTError;

    const-string v0, "Can be set by scrollpane only"

    invoke-direct {p1, v0}, Lorg/apache/poi/java/awt/AWTError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinimum(I)V
    .locals 1

    new-instance p1, Lorg/apache/poi/java/awt/AWTError;

    const-string v0, "Can be set by scrollpane only"

    invoke-direct {p1, v0}, Lorg/apache/poi/java/awt/AWTError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpan(III)V
    .locals 3

    iput p1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->minimum:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->maximum:I

    iget p2, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->minimum:I

    sub-int/2addr p1, p2

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->visibleAmount:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->visibleAmount:I

    int-to-double p1, p3

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr p1, v1

    double-to-int p1, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->blockIncrement:I

    iget p1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->value:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->setValue(I)V

    return-void
.end method

.method public declared-synchronized setUnitIncrement(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->unitIncrement:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->unitIncrement:I

    iget-object v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->sp:Lorg/apache/poi/java/awt/ScrollPane;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_0

    check-cast v0, Lorg/apache/poi/java/awt/peer/ScrollPanePeer;

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/java/awt/peer/ScrollPanePeer;->setUnitIncrement(Lorg/apache/poi/java/awt/Adjustable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->setTypedValue(II)V

    return-void
.end method

.method public setValueIsAdjusting(Z)V
    .locals 7

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->isAdjusting:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->isAdjusting:Z

    new-instance v0, Lorg/apache/poi/java/awt/event/AdjustmentEvent;

    const/16 v3, 0x259

    const/4 v4, 0x5

    iget v5, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->value:I

    move-object v1, v0

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/java/awt/event/AdjustmentEvent;-><init>(Lorg/apache/poi/java/awt/Adjustable;IIIZ)V

    iget-object p1, p0, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->adjustmentListener:Lorg/apache/poi/java/awt/event/AdjustmentListener;

    invoke-interface {p1, v0}, Lorg/apache/poi/java/awt/event/AdjustmentListener;->adjustmentValueChanged(Lorg/apache/poi/java/awt/event/AdjustmentEvent;)V

    :cond_0
    return-void
.end method

.method public setVisibleAmount(I)V
    .locals 1

    new-instance p1, Lorg/apache/poi/java/awt/AWTError;

    const-string v0, "Can be set by scrollpane only"

    invoke-direct {p1, v0}, Lorg/apache/poi/java/awt/AWTError;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/ScrollPaneAdjustable;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
