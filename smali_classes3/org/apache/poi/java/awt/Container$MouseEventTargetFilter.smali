.class Lorg/apache/poi/java/awt/Container$MouseEventTargetFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Container$EventTargetFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MouseEventTargetFilter"
.end annotation


# static fields
.field public static final FILTER:Lorg/apache/poi/java/awt/Container$EventTargetFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/Container$MouseEventTargetFilter;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/Container$MouseEventTargetFilter;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/Container$MouseEventTargetFilter;->FILTER:Lorg/apache/poi/java/awt/Container$EventTargetFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/poi/java/awt/Component;)Z
    .locals 6

    iget-wide v0, p1, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-wide/32 v2, 0x20000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/apache/poi/java/awt/Component;->mouseListener:Lorg/apache/poi/java/awt/event/MouseListener;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/apache/poi/java/awt/Component;->mouseMotionListener:Lorg/apache/poi/java/awt/event/MouseMotionListener;

    if-nez v0, :cond_1

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component;->mouseWheelListener:Lorg/apache/poi/java/awt/event/MouseWheelListener;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
