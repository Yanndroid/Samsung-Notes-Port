.class final Lorg/apache/poi/java/awt/SequencedEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$SequencedEventAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/SequencedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNested(Lorg/apache/poi/java/awt/AWTEvent;)Lorg/apache/poi/java/awt/AWTEvent;
    .locals 0

    check-cast p1, Lorg/apache/poi/java/awt/SequencedEvent;

    invoke-static {p1}, Lorg/apache/poi/java/awt/SequencedEvent;->access$000(Lorg/apache/poi/java/awt/SequencedEvent;)Lorg/apache/poi/java/awt/AWTEvent;

    move-result-object p1

    return-object p1
.end method

.method public isSequencedEvent(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 0

    instance-of p1, p1, Lorg/apache/poi/java/awt/SequencedEvent;

    return p1
.end method
