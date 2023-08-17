.class public Lorg/apache/poi/java/awt/DefaultFocusTraversalPolicy;
.super Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x7b3152052140a6b9L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/poi/java/awt/Component;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/java/awt/Window;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    instance-of v2, v0, Lorg/apache/poi/java/awt/Window;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isFocusable()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isFocusTraversableOverridden()Z

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->isFocusable()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_2
    return v1
.end method
