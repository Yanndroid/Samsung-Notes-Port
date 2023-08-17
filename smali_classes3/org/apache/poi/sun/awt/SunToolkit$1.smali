.class final Lorg/apache/poi/sun/awt/SunToolkit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sun/awt/SunToolkit;->postPriorityEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$e:Lorg/apache/poi/java/awt/AWTEvent;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sun/awt/SunToolkit$1;->val$e:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getAWTEventAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/sun/awt/SunToolkit$1;->val$e:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-interface {v0, v1}, Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;->setPosted(Lorg/apache/poi/java/awt/AWTEvent;)V

    iget-object v0, p0, Lorg/apache/poi/sun/awt/SunToolkit$1;->val$e:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Component;

    iget-object v1, p0, Lorg/apache/poi/sun/awt/SunToolkit$1;->val$e:Lorg/apache/poi/java/awt/AWTEvent;

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Component;->dispatchEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method
