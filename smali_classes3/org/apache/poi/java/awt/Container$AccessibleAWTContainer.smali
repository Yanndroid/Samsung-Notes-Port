.class public Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;
.super Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer$AccessibleContainerHandler;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x468479fc7895d1d1L


# instance fields
.field public accessibleContainerHandler:Lorg/apache/poi/java/awt/event/ContainerListener;

.field public final synthetic this$0:Lorg/apache/poi/java/awt/Container;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Container;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;->this$0:Lorg/apache/poi/java/awt/Container;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;-><init>(Lorg/apache/poi/java/awt/Component;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;->accessibleContainerHandler:Lorg/apache/poi/java/awt/event/ContainerListener;

    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;->accessibleContainerHandler:Lorg/apache/poi/java/awt/event/ContainerListener;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer$AccessibleContainerHandler;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer$AccessibleContainerHandler;-><init>(Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;->accessibleContainerHandler:Lorg/apache/poi/java/awt/event/ContainerListener;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;->this$0:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v1, v0}, Lorg/apache/poi/java/awt/Container;->addContainerListener(Lorg/apache/poi/java/awt/event/ContainerListener;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public getAccessibleAt(Lorg/apache/poi/java/awt/Point;)Ljavax/accessibility/Accessible;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;->this$0:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Container;->getAccessibleAt(Lorg/apache/poi/java/awt/Point;)Ljavax/accessibility/Accessible;

    move-result-object p1

    return-object p1
.end method

.method public getAccessibleChild(I)Ljavax/accessibility/Accessible;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;->this$0:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Container;->getAccessibleChild(I)Ljavax/accessibility/Accessible;

    move-result-object p1

    return-object p1
.end method

.method public getAccessibleChildrenCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;->this$0:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->getAccessibleChildrenCount()I

    move-result v0

    return v0
.end method
