.class Lorg/apache/poi/java/awt/LightweightDispatcher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/LightweightDispatcher;->eventDispatched(Lorg/apache/poi/java/awt/AWTEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/LightweightDispatcher;

.field public final synthetic val$mouseEvent:Lorg/apache/poi/java/awt/event/MouseEvent;

.field public final synthetic val$ptSrcOrigin:Lorg/apache/poi/java/awt/Point;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/LightweightDispatcher;Lorg/apache/poi/java/awt/event/MouseEvent;Lorg/apache/poi/java/awt/Point;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$3;->this$0:Lorg/apache/poi/java/awt/LightweightDispatcher;

    iput-object p2, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$3;->val$mouseEvent:Lorg/apache/poi/java/awt/event/MouseEvent;

    iput-object p3, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$3;->val$ptSrcOrigin:Lorg/apache/poi/java/awt/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$3;->this$0:Lorg/apache/poi/java/awt/LightweightDispatcher;

    invoke-static {v0}, Lorg/apache/poi/java/awt/LightweightDispatcher;->access$000(Lorg/apache/poi/java/awt/LightweightDispatcher;)Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$3;->this$0:Lorg/apache/poi/java/awt/LightweightDispatcher;

    invoke-static {v0}, Lorg/apache/poi/java/awt/LightweightDispatcher;->access$000(Lorg/apache/poi/java/awt/LightweightDispatcher;)Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getLocationOnScreen()Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$3;->val$mouseEvent:Lorg/apache/poi/java/awt/event/MouseEvent;

    iget-object v2, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$3;->val$ptSrcOrigin:Lorg/apache/poi/java/awt/Point;

    iget v3, v2, Lorg/apache/poi/java/awt/Point;->x:I

    iget v4, v0, Lorg/apache/poi/java/awt/Point;->x:I

    sub-int/2addr v3, v4

    iget v2, v2, Lorg/apache/poi/java/awt/Point;->y:I

    iget v0, v0, Lorg/apache/poi/java/awt/Point;->y:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/java/awt/event/MouseEvent;->translatePoint(II)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$3;->this$0:Lorg/apache/poi/java/awt/LightweightDispatcher;

    invoke-static {v0}, Lorg/apache/poi/java/awt/LightweightDispatcher;->access$000(Lorg/apache/poi/java/awt/LightweightDispatcher;)Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$3;->val$mouseEvent:Lorg/apache/poi/java/awt/event/MouseEvent;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/event/MouseEvent;->getX()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$3;->val$mouseEvent:Lorg/apache/poi/java/awt/event/MouseEvent;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/event/MouseEvent;->getY()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/java/awt/Container;->getMouseEventTarget(IIZ)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$3;->this$0:Lorg/apache/poi/java/awt/LightweightDispatcher;

    iget-object v2, p0, Lorg/apache/poi/java/awt/LightweightDispatcher$3;->val$mouseEvent:Lorg/apache/poi/java/awt/event/MouseEvent;

    invoke-static {v1, v0, v2}, Lorg/apache/poi/java/awt/LightweightDispatcher;->access$100(Lorg/apache/poi/java/awt/LightweightDispatcher;Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/event/MouseEvent;)V

    return-void
.end method
