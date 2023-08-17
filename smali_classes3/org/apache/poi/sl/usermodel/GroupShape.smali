.class public interface abstract Lorg/apache/poi/sl/usermodel/GroupShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Shape;
.implements Lorg/apache/poi/sl/usermodel/ShapeContainer;
.implements Lorg/apache/poi/sl/usermodel/PlaceableShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;P::",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "TS;TP;*>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;",
        "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
        "TS;TP;>;",
        "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
        "TS;TP;>;"
    }
.end annotation


# virtual methods
.method public abstract getInteriorAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;
.end method

.method public abstract setInteriorAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V
.end method
