.class Lorg/apache/poi/java/awt/Window$WindowDisposerRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/java2d/DisposerRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowDisposerRecord"
.end annotation


# instance fields
.field public final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/poi/sun/awt/AppContext;",
            ">;"
        }
    .end annotation
.end field

.field public final owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/poi/java/awt/Window;",
            ">;"
        }
    .end annotation
.end field

.field public final weakThis:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/Window;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Window;->getOwner()Lorg/apache/poi/java/awt/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window$WindowDisposerRecord;->owner:Ljava/lang/ref/WeakReference;

    invoke-static {p2}, Lorg/apache/poi/java/awt/Window;->access$000(Lorg/apache/poi/java/awt/Window;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/java/awt/Window$WindowDisposerRecord;->weakThis:Ljava/lang/ref/WeakReference;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/apache/poi/java/awt/Window$WindowDisposerRecord;->context:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window$WindowDisposerRecord;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Window;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Window$WindowDisposerRecord;->weakThis:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Window;->removeOwnedWindow(Ljava/lang/ref/WeakReference;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Window$WindowDisposerRecord;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sun/awt/AppContext;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/poi/java/awt/Window$WindowDisposerRecord;->weakThis:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/Window;->access$100(Lorg/apache/poi/sun/awt/AppContext;Ljava/lang/ref/WeakReference;)V

    :cond_1
    return-void
.end method
