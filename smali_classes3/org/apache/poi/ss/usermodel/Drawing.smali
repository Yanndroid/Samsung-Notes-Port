.class public interface abstract Lorg/apache/poi/ss/usermodel/Drawing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ShapeContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/poi/ss/usermodel/Shape;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/ShapeContainer<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract createAnchor(IIIIIIII)Lorg/apache/poi/ss/usermodel/ClientAnchor;
.end method

.method public abstract createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/ss/usermodel/Comment;
.end method

.method public abstract createChart(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/ss/usermodel/Chart;
.end method

.method public abstract createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/ss/usermodel/ObjectData;
.end method

.method public abstract createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/ss/usermodel/Picture;
.end method
