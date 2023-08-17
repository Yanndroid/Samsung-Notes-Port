.class final Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Conditional;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;->sendMessage(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$se:Lorg/apache/poi/java/awt/SentEvent;

.field public final synthetic val$targetAppContext:Lorg/apache/poi/sun/awt/AppContext;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/SentEvent;Lorg/apache/poi/sun/awt/AppContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$2;->val$se:Lorg/apache/poi/java/awt/SentEvent;

    iput-object p2, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$2;->val$targetAppContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$2;->val$se:Lorg/apache/poi/java/awt/SentEvent;

    iget-boolean v0, v0, Lorg/apache/poi/java/awt/SentEvent;->dispatched:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$2;->val$targetAppContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/AppContext;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
