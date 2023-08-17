.class public abstract Lorg/apache/poi/java/awt/FocusTraversalPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getComponentAfter(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;
.end method

.method public abstract getComponentBefore(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;
.end method

.method public abstract getDefaultComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;
.end method

.method public abstract getFirstComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;
.end method

.method public getInitialComponent(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Component;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;->getDefaultComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->isFocusableWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "window cannot be equal to null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getLastComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;
.end method
