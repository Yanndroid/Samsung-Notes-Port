.class public interface abstract Lorg/apache/poi/sl/usermodel/SimpleShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Shape;
.implements Lorg/apache/poi/sl/draw/geom/IAdjustableShape;
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
        "Lorg/apache/poi/sl/draw/geom/IAdjustableShape;",
        "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
        "TS;TP;>;"
    }
.end annotation


# virtual methods
.method public abstract createHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Hyperlink<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract getFillColor()Lorg/apache/poi/java/awt/Color;
.end method

.method public abstract getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;
.end method

.method public abstract getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;
.end method

.method public abstract getHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Hyperlink<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract getLineDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration;
.end method

.method public abstract getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;
.end method

.method public abstract getShadow()Lorg/apache/poi/sl/usermodel/Shadow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Shadow<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract getShapeType()Lorg/apache/poi/sl/usermodel/ShapeType;
.end method

.method public abstract getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;
.end method

.method public abstract setFillColor(Lorg/apache/poi/java/awt/Color;)V
.end method

.method public abstract setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
.end method

.method public abstract setShapeType(Lorg/apache/poi/sl/usermodel/ShapeType;)V
.end method

.method public varargs abstract setStrokeStyle([Ljava/lang/Object;)V
.end method
