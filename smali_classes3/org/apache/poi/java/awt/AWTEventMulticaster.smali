.class public Lorg/apache/poi/java/awt/AWTEventMulticaster;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/event/ComponentListener;
.implements Lorg/apache/poi/java/awt/event/ContainerListener;
.implements Lorg/apache/poi/java/awt/event/FocusListener;
.implements Lorg/apache/poi/java/awt/event/KeyListener;
.implements Lorg/apache/poi/java/awt/event/MouseListener;
.implements Lorg/apache/poi/java/awt/event/MouseMotionListener;
.implements Lorg/apache/poi/java/awt/event/WindowListener;
.implements Lorg/apache/poi/java/awt/event/WindowFocusListener;
.implements Lorg/apache/poi/java/awt/event/WindowStateListener;
.implements Lorg/apache/poi/java/awt/event/ActionListener;
.implements Lorg/apache/poi/java/awt/event/ItemListener;
.implements Lorg/apache/poi/java/awt/event/AdjustmentListener;
.implements Lorg/apache/poi/java/awt/event/TextListener;
.implements Lorg/apache/poi/java/awt/event/InputMethodListener;
.implements Lorg/apache/poi/java/awt/event/HierarchyListener;
.implements Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;
.implements Lorg/apache/poi/java/awt/event/MouseWheelListener;


# instance fields
.field public final a:Ljava/util/EventListener;

.field public final b:Ljava/util/EventListener;


# direct methods
.method public constructor <init>(Ljava/util/EventListener;Ljava/util/EventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    iput-object p2, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    return-void
.end method

.method public static add(Lorg/apache/poi/java/awt/event/ActionListener;Lorg/apache/poi/java/awt/event/ActionListener;)Lorg/apache/poi/java/awt/event/ActionListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/ActionListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/AdjustmentListener;Lorg/apache/poi/java/awt/event/AdjustmentListener;)Lorg/apache/poi/java/awt/event/AdjustmentListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/AdjustmentListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/ComponentListener;Lorg/apache/poi/java/awt/event/ComponentListener;)Lorg/apache/poi/java/awt/event/ComponentListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/ComponentListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/ContainerListener;Lorg/apache/poi/java/awt/event/ContainerListener;)Lorg/apache/poi/java/awt/event/ContainerListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/ContainerListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/FocusListener;Lorg/apache/poi/java/awt/event/FocusListener;)Lorg/apache/poi/java/awt/event/FocusListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/FocusListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;)Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/HierarchyListener;Lorg/apache/poi/java/awt/event/HierarchyListener;)Lorg/apache/poi/java/awt/event/HierarchyListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/HierarchyListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/InputMethodListener;Lorg/apache/poi/java/awt/event/InputMethodListener;)Lorg/apache/poi/java/awt/event/InputMethodListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/InputMethodListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/ItemListener;Lorg/apache/poi/java/awt/event/ItemListener;)Lorg/apache/poi/java/awt/event/ItemListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/ItemListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/KeyListener;Lorg/apache/poi/java/awt/event/KeyListener;)Lorg/apache/poi/java/awt/event/KeyListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/KeyListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/MouseListener;Lorg/apache/poi/java/awt/event/MouseListener;)Lorg/apache/poi/java/awt/event/MouseListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/MouseListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/MouseMotionListener;Lorg/apache/poi/java/awt/event/MouseMotionListener;)Lorg/apache/poi/java/awt/event/MouseMotionListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/MouseMotionListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/MouseWheelListener;Lorg/apache/poi/java/awt/event/MouseWheelListener;)Lorg/apache/poi/java/awt/event/MouseWheelListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/MouseWheelListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/TextListener;Lorg/apache/poi/java/awt/event/TextListener;)Lorg/apache/poi/java/awt/event/TextListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/TextListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/WindowFocusListener;Lorg/apache/poi/java/awt/event/WindowFocusListener;)Lorg/apache/poi/java/awt/event/WindowFocusListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/WindowFocusListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/WindowListener;Lorg/apache/poi/java/awt/event/WindowListener;)Lorg/apache/poi/java/awt/event/WindowListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/WindowListener;

    return-object p0
.end method

.method public static add(Lorg/apache/poi/java/awt/event/WindowStateListener;Lorg/apache/poi/java/awt/event/WindowStateListener;)Lorg/apache/poi/java/awt/event/WindowStateListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/WindowStateListener;

    return-object p0
.end method

.method public static addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lorg/apache/poi/java/awt/AWTEventMulticaster;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;-><init>(Ljava/util/EventListener;Ljava/util/EventListener;)V

    return-object v0
.end method

.method private static getListenerCount(Ljava/util/EventListener;Ljava/lang/Class;)I
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListenerCount(Ljava/util/EventListener;Ljava/lang/Class;)I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListenerCount(Ljava/util/EventListener;Ljava/lang/Class;)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/util/EventListener;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const-string v0, "Listener type should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListenerCount(Ljava/util/EventListener;Ljava/lang/Class;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/EventListener;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->populateListenerArray([Ljava/util/EventListener;Ljava/util/EventListener;I)I

    return-object p1
.end method

.method private static populateListenerArray([Ljava/util/EventListener;Ljava/util/EventListener;I)I
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/AWTEventMulticaster;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/AWTEventMulticaster;

    iget-object v0, p1, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    invoke-static {p0, v0, p2}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->populateListenerArray([Ljava/util/EventListener;Ljava/util/EventListener;I)I

    move-result p2

    iget-object p1, p1, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->populateListenerArray([Ljava/util/EventListener;Ljava/util/EventListener;I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aput-object p1, p0, p2

    add-int/lit8 p2, p2, 0x1

    :cond_1
    return p2
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/ActionListener;Lorg/apache/poi/java/awt/event/ActionListener;)Lorg/apache/poi/java/awt/event/ActionListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/ActionListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/AdjustmentListener;Lorg/apache/poi/java/awt/event/AdjustmentListener;)Lorg/apache/poi/java/awt/event/AdjustmentListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/AdjustmentListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/ComponentListener;Lorg/apache/poi/java/awt/event/ComponentListener;)Lorg/apache/poi/java/awt/event/ComponentListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/ComponentListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/ContainerListener;Lorg/apache/poi/java/awt/event/ContainerListener;)Lorg/apache/poi/java/awt/event/ContainerListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/ContainerListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/FocusListener;Lorg/apache/poi/java/awt/event/FocusListener;)Lorg/apache/poi/java/awt/event/FocusListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/FocusListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;)Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/HierarchyListener;Lorg/apache/poi/java/awt/event/HierarchyListener;)Lorg/apache/poi/java/awt/event/HierarchyListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/HierarchyListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/InputMethodListener;Lorg/apache/poi/java/awt/event/InputMethodListener;)Lorg/apache/poi/java/awt/event/InputMethodListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/InputMethodListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/ItemListener;Lorg/apache/poi/java/awt/event/ItemListener;)Lorg/apache/poi/java/awt/event/ItemListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/ItemListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/KeyListener;Lorg/apache/poi/java/awt/event/KeyListener;)Lorg/apache/poi/java/awt/event/KeyListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/KeyListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/MouseListener;Lorg/apache/poi/java/awt/event/MouseListener;)Lorg/apache/poi/java/awt/event/MouseListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/MouseListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/MouseMotionListener;Lorg/apache/poi/java/awt/event/MouseMotionListener;)Lorg/apache/poi/java/awt/event/MouseMotionListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/MouseMotionListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/MouseWheelListener;Lorg/apache/poi/java/awt/event/MouseWheelListener;)Lorg/apache/poi/java/awt/event/MouseWheelListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/MouseWheelListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/TextListener;Lorg/apache/poi/java/awt/event/TextListener;)Lorg/apache/poi/java/awt/event/TextListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/TextListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/WindowFocusListener;Lorg/apache/poi/java/awt/event/WindowFocusListener;)Lorg/apache/poi/java/awt/event/WindowFocusListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/WindowFocusListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/WindowListener;Lorg/apache/poi/java/awt/event/WindowListener;)Lorg/apache/poi/java/awt/event/WindowListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/WindowListener;

    return-object p0
.end method

.method public static remove(Lorg/apache/poi/java/awt/event/WindowStateListener;Lorg/apache/poi/java/awt/event/WindowStateListener;)Lorg/apache/poi/java/awt/event/WindowStateListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/event/WindowStateListener;

    return-object p0
.end method

.method public static removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;
    .locals 1

    if-eq p0, p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, Lorg/apache/poi/java/awt/AWTEventMulticaster;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/apache/poi/java/awt/AWTEventMulticaster;

    invoke-virtual {p2, p0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->saveInternal(Ljava/io/ObjectOutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public actionPerformed(Lorg/apache/poi/java/awt/event/ActionEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ActionListener;->actionPerformed(Lorg/apache/poi/java/awt/event/ActionEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ActionListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ActionListener;->actionPerformed(Lorg/apache/poi/java/awt/event/ActionEvent;)V

    return-void
.end method

.method public adjustmentValueChanged(Lorg/apache/poi/java/awt/event/AdjustmentEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/AdjustmentListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/AdjustmentListener;->adjustmentValueChanged(Lorg/apache/poi/java/awt/event/AdjustmentEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/AdjustmentListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/AdjustmentListener;->adjustmentValueChanged(Lorg/apache/poi/java/awt/event/AdjustmentEvent;)V

    return-void
.end method

.method public ancestorMoved(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;->ancestorMoved(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;->ancestorMoved(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V

    return-void
.end method

.method public ancestorResized(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;->ancestorResized(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/HierarchyBoundsListener;->ancestorResized(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V

    return-void
.end method

.method public caretPositionChanged(Lorg/apache/poi/java/awt/event/InputMethodEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/InputMethodListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/InputMethodListener;->caretPositionChanged(Lorg/apache/poi/java/awt/event/InputMethodEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/InputMethodListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/InputMethodListener;->caretPositionChanged(Lorg/apache/poi/java/awt/event/InputMethodEvent;)V

    return-void
.end method

.method public componentAdded(Lorg/apache/poi/java/awt/event/ContainerEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ContainerListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ContainerListener;->componentAdded(Lorg/apache/poi/java/awt/event/ContainerEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ContainerListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ContainerListener;->componentAdded(Lorg/apache/poi/java/awt/event/ContainerEvent;)V

    return-void
.end method

.method public componentHidden(Lorg/apache/poi/java/awt/event/ComponentEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ComponentListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ComponentListener;->componentHidden(Lorg/apache/poi/java/awt/event/ComponentEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ComponentListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ComponentListener;->componentHidden(Lorg/apache/poi/java/awt/event/ComponentEvent;)V

    return-void
.end method

.method public componentMoved(Lorg/apache/poi/java/awt/event/ComponentEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ComponentListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ComponentListener;->componentMoved(Lorg/apache/poi/java/awt/event/ComponentEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ComponentListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ComponentListener;->componentMoved(Lorg/apache/poi/java/awt/event/ComponentEvent;)V

    return-void
.end method

.method public componentRemoved(Lorg/apache/poi/java/awt/event/ContainerEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ContainerListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ContainerListener;->componentRemoved(Lorg/apache/poi/java/awt/event/ContainerEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ContainerListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ContainerListener;->componentRemoved(Lorg/apache/poi/java/awt/event/ContainerEvent;)V

    return-void
.end method

.method public componentResized(Lorg/apache/poi/java/awt/event/ComponentEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ComponentListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ComponentListener;->componentResized(Lorg/apache/poi/java/awt/event/ComponentEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ComponentListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ComponentListener;->componentResized(Lorg/apache/poi/java/awt/event/ComponentEvent;)V

    return-void
.end method

.method public componentShown(Lorg/apache/poi/java/awt/event/ComponentEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ComponentListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ComponentListener;->componentShown(Lorg/apache/poi/java/awt/event/ComponentEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ComponentListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ComponentListener;->componentShown(Lorg/apache/poi/java/awt/event/ComponentEvent;)V

    return-void
.end method

.method public focusGained(Lorg/apache/poi/java/awt/event/FocusEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/FocusListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/FocusListener;->focusGained(Lorg/apache/poi/java/awt/event/FocusEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/FocusListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/FocusListener;->focusGained(Lorg/apache/poi/java/awt/event/FocusEvent;)V

    return-void
.end method

.method public focusLost(Lorg/apache/poi/java/awt/event/FocusEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/FocusListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/FocusListener;->focusLost(Lorg/apache/poi/java/awt/event/FocusEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/FocusListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/FocusListener;->focusLost(Lorg/apache/poi/java/awt/event/FocusEvent;)V

    return-void
.end method

.method public hierarchyChanged(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/HierarchyListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/HierarchyListener;->hierarchyChanged(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/HierarchyListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/HierarchyListener;->hierarchyChanged(Lorg/apache/poi/java/awt/event/HierarchyEvent;)V

    return-void
.end method

.method public inputMethodTextChanged(Lorg/apache/poi/java/awt/event/InputMethodEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/InputMethodListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/InputMethodListener;->inputMethodTextChanged(Lorg/apache/poi/java/awt/event/InputMethodEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/InputMethodListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/InputMethodListener;->inputMethodTextChanged(Lorg/apache/poi/java/awt/event/InputMethodEvent;)V

    return-void
.end method

.method public itemStateChanged(Lorg/apache/poi/java/awt/event/ItemEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ItemListener;->itemStateChanged(Lorg/apache/poi/java/awt/event/ItemEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/ItemListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/ItemListener;->itemStateChanged(Lorg/apache/poi/java/awt/event/ItemEvent;)V

    return-void
.end method

.method public keyPressed(Lorg/apache/poi/java/awt/event/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/KeyListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/KeyListener;->keyPressed(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/KeyListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/KeyListener;->keyPressed(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    return-void
.end method

.method public keyReleased(Lorg/apache/poi/java/awt/event/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/KeyListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/KeyListener;->keyReleased(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/KeyListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/KeyListener;->keyReleased(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    return-void
.end method

.method public keyTyped(Lorg/apache/poi/java/awt/event/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/KeyListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/KeyListener;->keyTyped(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/KeyListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/KeyListener;->keyTyped(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    return-void
.end method

.method public mouseClicked(Lorg/apache/poi/java/awt/event/MouseEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mouseClicked(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mouseClicked(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    return-void
.end method

.method public mouseDragged(Lorg/apache/poi/java/awt/event/MouseEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseMotionListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseMotionListener;->mouseDragged(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseMotionListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseMotionListener;->mouseDragged(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    return-void
.end method

.method public mouseEntered(Lorg/apache/poi/java/awt/event/MouseEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mouseEntered(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mouseEntered(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    return-void
.end method

.method public mouseExited(Lorg/apache/poi/java/awt/event/MouseEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mouseExited(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mouseExited(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    return-void
.end method

.method public mouseMoved(Lorg/apache/poi/java/awt/event/MouseEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseMotionListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseMotionListener;->mouseMoved(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseMotionListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseMotionListener;->mouseMoved(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    return-void
.end method

.method public mousePressed(Lorg/apache/poi/java/awt/event/MouseEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mousePressed(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mousePressed(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    return-void
.end method

.method public mouseReleased(Lorg/apache/poi/java/awt/event/MouseEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mouseReleased(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseListener;->mouseReleased(Lorg/apache/poi/java/awt/event/MouseEvent;)V

    return-void
.end method

.method public mouseWheelMoved(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseWheelListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseWheelListener;->mouseWheelMoved(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/MouseWheelListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/MouseWheelListener;->mouseWheelMoved(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)V

    return-void
.end method

.method public remove(Ljava/util/EventListener;)Ljava/util/EventListener;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    return-object p1

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    if-ne p1, v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    invoke-static {v1, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->removeInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    if-ne p1, v1, :cond_2

    return-object p0

    :cond_2
    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->addInternal(Ljava/util/EventListener;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public saveInternal(Ljava/io/ObjectOutputStream;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    instance-of v1, v0, Lorg/apache/poi/java/awt/AWTEventMulticaster;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/java/awt/AWTEventMulticaster;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->saveInternal(Ljava/io/ObjectOutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, v0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    instance-of v1, v0, Lorg/apache/poi/java/awt/AWTEventMulticaster;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/apache/poi/java/awt/AWTEventMulticaster;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->saveInternal(Ljava/io/ObjectOutputStream;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    instance-of v0, v0, Ljava/io/Serializable;

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    invoke-virtual {p1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public textValueChanged(Lorg/apache/poi/java/awt/event/TextEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/TextListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/TextListener;->textValueChanged(Lorg/apache/poi/java/awt/event/TextEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/TextListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/TextListener;->textValueChanged(Lorg/apache/poi/java/awt/event/TextEvent;)V

    return-void
.end method

.method public windowActivated(Lorg/apache/poi/java/awt/event/WindowEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowActivated(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowActivated(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    return-void
.end method

.method public windowClosed(Lorg/apache/poi/java/awt/event/WindowEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowClosed(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowClosed(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    return-void
.end method

.method public windowClosing(Lorg/apache/poi/java/awt/event/WindowEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowClosing(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowClosing(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    return-void
.end method

.method public windowDeactivated(Lorg/apache/poi/java/awt/event/WindowEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowDeactivated(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowDeactivated(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    return-void
.end method

.method public windowDeiconified(Lorg/apache/poi/java/awt/event/WindowEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowDeiconified(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowDeiconified(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    return-void
.end method

.method public windowGainedFocus(Lorg/apache/poi/java/awt/event/WindowEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowFocusListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowFocusListener;->windowGainedFocus(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowFocusListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowFocusListener;->windowGainedFocus(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    return-void
.end method

.method public windowIconified(Lorg/apache/poi/java/awt/event/WindowEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowIconified(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowIconified(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    return-void
.end method

.method public windowLostFocus(Lorg/apache/poi/java/awt/event/WindowEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowFocusListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowFocusListener;->windowLostFocus(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowFocusListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowFocusListener;->windowLostFocus(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    return-void
.end method

.method public windowOpened(Lorg/apache/poi/java/awt/event/WindowEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowOpened(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowOpened(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    return-void
.end method

.method public windowStateChanged(Lorg/apache/poi/java/awt/event/WindowEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->a:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowStateListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowStateListener;->windowStateChanged(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/AWTEventMulticaster;->b:Ljava/util/EventListener;

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowStateListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowStateListener;->windowStateChanged(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    return-void
.end method
