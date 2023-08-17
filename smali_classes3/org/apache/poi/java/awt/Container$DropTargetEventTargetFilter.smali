.class Lorg/apache/poi/java/awt/Container$DropTargetEventTargetFilter;
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
    name = "DropTargetEventTargetFilter"
.end annotation


# static fields
.field public static final FILTER:Lorg/apache/poi/java/awt/Container$EventTargetFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/Container$DropTargetEventTargetFilter;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/Container$DropTargetEventTargetFilter;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/Container$DropTargetEventTargetFilter;->FILTER:Lorg/apache/poi/java/awt/Container$EventTargetFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/poi/java/awt/Component;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getDropTarget()Lorg/apache/poi/java/awt/dnd/DropTarget;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/dnd/DropTarget;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
