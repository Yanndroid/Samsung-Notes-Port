.class Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/ModalityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/SunToolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModalityListenerList"
.end annotation


# instance fields
.field public listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/poi/sun/awt/ModalityListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;->listeners:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/poi/sun/awt/ModalityListener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public modalityPopped(Lorg/apache/poi/sun/awt/ModalityEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sun/awt/ModalityListener;

    invoke-interface {v1, p1}, Lorg/apache/poi/sun/awt/ModalityListener;->modalityPopped(Lorg/apache/poi/sun/awt/ModalityEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public modalityPushed(Lorg/apache/poi/sun/awt/ModalityEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sun/awt/ModalityListener;

    invoke-interface {v1, p1}, Lorg/apache/poi/sun/awt/ModalityListener;->modalityPushed(Lorg/apache/poi/sun/awt/ModalityEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Lorg/apache/poi/sun/awt/ModalityListener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit$ModalityListenerList;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method
