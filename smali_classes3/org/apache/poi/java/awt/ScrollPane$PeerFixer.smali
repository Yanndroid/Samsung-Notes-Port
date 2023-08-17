.class Lorg/apache/poi/java/awt/ScrollPane$PeerFixer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/event/AdjustmentListener;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/ScrollPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PeerFixer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe7bd788d4e4e576L


# instance fields
.field private scroller:Lorg/apache/poi/java/awt/ScrollPane;

.field public final synthetic this$0:Lorg/apache/poi/java/awt/ScrollPane;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/ScrollPane;Lorg/apache/poi/java/awt/ScrollPane;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/ScrollPane$PeerFixer;->this$0:Lorg/apache/poi/java/awt/ScrollPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/java/awt/ScrollPane$PeerFixer;->scroller:Lorg/apache/poi/java/awt/ScrollPane;

    return-void
.end method


# virtual methods
.method public adjustmentValueChanged(Lorg/apache/poi/java/awt/event/AdjustmentEvent;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/AdjustmentEvent;->getAdjustable()Lorg/apache/poi/java/awt/Adjustable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/AdjustmentEvent;->getValue()I

    move-result p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/ScrollPane$PeerFixer;->scroller:Lorg/apache/poi/java/awt/ScrollPane;

    iget-object v1, v1, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/ScrollPanePeer;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, Lorg/apache/poi/java/awt/peer/ScrollPanePeer;->setValue(Lorg/apache/poi/java/awt/Adjustable;I)V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/ScrollPane$PeerFixer;->scroller:Lorg/apache/poi/java/awt/ScrollPane;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/poi/java/awt/Adjustable;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getLocation()Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    iget v0, v0, Lorg/apache/poi/java/awt/Point;->x:I

    neg-int p1, p1

    invoke-virtual {v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->move(II)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal adjustable orientation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    neg-int p1, p1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getLocation()Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    iget v0, v0, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {v1, p1, v0}, Lorg/apache/poi/java/awt/Component;->move(II)V

    :goto_0
    return-void
.end method
