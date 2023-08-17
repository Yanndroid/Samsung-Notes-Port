.class Lorg/apache/poi/java/awt/Robot$RobotDisposer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/java2d/DisposerRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Robot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RobotDisposer"
.end annotation


# instance fields
.field private final peer:Lorg/apache/poi/java/awt/peer/RobotPeer;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/peer/RobotPeer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/Robot$RobotDisposer;->peer:Lorg/apache/poi/java/awt/peer/RobotPeer;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Robot$RobotDisposer;->peer:Lorg/apache/poi/java/awt/peer/RobotPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/RobotPeer;->dispose()V

    :cond_0
    return-void
.end method
