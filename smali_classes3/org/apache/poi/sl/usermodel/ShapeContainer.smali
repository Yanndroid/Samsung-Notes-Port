.class public interface abstract Lorg/apache/poi/sl/usermodel/ShapeContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;P::",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "TS;TP;*>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TS;>;"
    }
.end annotation


# virtual methods
.method public abstract addShape(Lorg/apache/poi/sl/usermodel/Shape;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract createAutoShape()Lorg/apache/poi/sl/usermodel/AutoShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/AutoShape<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract createConnector()Lorg/apache/poi/sl/usermodel/ConnectorShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/ConnectorShape<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract createFreeform()Lorg/apache/poi/sl/usermodel/FreeformShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/FreeformShape<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract createGroup()Lorg/apache/poi/sl/usermodel/GroupShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/GroupShape<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/sl/usermodel/PictureShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/PictureData;",
            ")",
            "Lorg/apache/poi/sl/usermodel/PictureShape<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract createTable(II)Lorg/apache/poi/sl/usermodel/TableShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/poi/sl/usermodel/TableShape<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract createTextBox()Lorg/apache/poi/sl/usermodel/TextBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/TextBox<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract getShapes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract removeShape(Lorg/apache/poi/sl/usermodel/Shape;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method
