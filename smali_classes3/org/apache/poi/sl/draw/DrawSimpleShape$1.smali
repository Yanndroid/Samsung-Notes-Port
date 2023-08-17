.class final Lorg/apache/poi/sl/draw/DrawSimpleShape$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/EventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sl/draw/DrawSimpleShape;->getCustomGeometry(Ljava/lang/String;Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;
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
.method public accept(Lorg/apache/poi/javax/xml/stream/events/XMLEvent;)Z
    .locals 0

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result p1

    return p1
.end method
