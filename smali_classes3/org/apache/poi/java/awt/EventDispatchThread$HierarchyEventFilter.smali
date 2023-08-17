.class Lorg/apache/poi/java/awt/EventDispatchThread$HierarchyEventFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/EventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/EventDispatchThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HierarchyEventFilter"
.end annotation


# instance fields
.field private modalComponent:Lorg/apache/poi/java/awt/Component;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/EventDispatchThread$HierarchyEventFilter;->modalComponent:Lorg/apache/poi/java/awt/Component;

    return-void
.end method


# virtual methods
.method public acceptEvent(Lorg/apache/poi/java/awt/AWTEvent;)Lorg/apache/poi/java/awt/EventFilter$FilterAction;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventDispatchThread$HierarchyEventFilter;->modalComponent:Lorg/apache/poi/java/awt/Component;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v0

    const/16 v1, 0x1f4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1fb

    if-gt v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/16 v4, 0x3e9

    if-lt v0, v4, :cond_1

    if-gt v0, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const/16 v5, 0xc9

    if-ne v0, v5, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    iget-object v5, p0, Lorg/apache/poi/java/awt/EventDispatchThread$HierarchyEventFilter;->modalComponent:Lorg/apache/poi/java/awt/Component;

    const-string v6, "javax.swing.JInternalFrame"

    invoke-static {v5, v6}, Lorg/apache/poi/java/awt/Component;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_3

    sget-object p1, Lorg/apache/poi/java/awt/EventFilter$FilterAction;->REJECT:Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    goto :goto_3

    :cond_3
    sget-object p1, Lorg/apache/poi/java/awt/EventFilter$FilterAction;->ACCEPT:Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    :goto_3
    return-object p1

    :cond_4
    if-nez v1, :cond_5

    if-nez v4, :cond_5

    if-eqz v0, :cond_9

    :cond_5
    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/poi/sun/awt/ModalExclude;

    if-eqz v0, :cond_6

    sget-object p1, Lorg/apache/poi/java/awt/EventFilter$FilterAction;->ACCEPT:Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    return-object p1

    :cond_6
    instance-of v0, p1, Lorg/apache/poi/java/awt/Component;

    if-eqz v0, :cond_9

    check-cast p1, Lorg/apache/poi/java/awt/Component;

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventDispatchThread$HierarchyEventFilter;->modalComponent:Lorg/apache/poi/java/awt/Component;

    instance-of v0, v0, Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_8

    :goto_4
    iget-object v0, p0, Lorg/apache/poi/java/awt/EventDispatchThread$HierarchyEventFilter;->modalComponent:Lorg/apache/poi/java/awt/Component;

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_8

    instance-of v0, p1, Lorg/apache/poi/java/awt/Window;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/java/awt/Window;

    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->isModalExcluded(Lorg/apache/poi/java/awt/Window;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object p1

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_5
    if-nez v2, :cond_9

    iget-object v0, p0, Lorg/apache/poi/java/awt/EventDispatchThread$HierarchyEventFilter;->modalComponent:Lorg/apache/poi/java/awt/Component;

    if-eq p1, v0, :cond_9

    sget-object p1, Lorg/apache/poi/java/awt/EventFilter$FilterAction;->REJECT:Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    return-object p1

    :cond_9
    sget-object p1, Lorg/apache/poi/java/awt/EventFilter$FilterAction;->ACCEPT:Lorg/apache/poi/java/awt/EventFilter$FilterAction;

    return-object p1
.end method
