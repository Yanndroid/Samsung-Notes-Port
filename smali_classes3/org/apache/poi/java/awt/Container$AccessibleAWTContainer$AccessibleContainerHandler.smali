.class public Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer$AccessibleContainerHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/event/ContainerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleContainerHandler"
.end annotation


# instance fields
.field public final synthetic this$1:Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer$AccessibleContainerHandler;->this$1:Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public componentAdded(Lorg/apache/poi/java/awt/event/ContainerEvent;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/ContainerEvent;->getChild()Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljavax/accessibility/Accessible;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer$AccessibleContainerHandler;->this$1:Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;

    const/4 v1, 0x0

    check-cast p1, Ljavax/accessibility/Accessible;

    invoke-interface {p1}, Ljavax/accessibility/Accessible;->getAccessibleContext()Ljavax/accessibility/AccessibleContext;

    move-result-object p1

    const-string v2, "AccessibleChild"

    invoke-virtual {v0, v2, v1, p1}, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public componentRemoved(Lorg/apache/poi/java/awt/event/ContainerEvent;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/ContainerEvent;->getChild()Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljavax/accessibility/Accessible;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer$AccessibleContainerHandler;->this$1:Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;

    check-cast p1, Ljavax/accessibility/Accessible;

    invoke-interface {p1}, Ljavax/accessibility/Accessible;->getAccessibleContext()Ljavax/accessibility/AccessibleContext;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "AccessibleChild"

    invoke-virtual {v0, v2, p1, v1}, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
