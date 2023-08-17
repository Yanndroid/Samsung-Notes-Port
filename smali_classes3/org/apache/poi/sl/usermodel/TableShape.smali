.class public interface abstract Lorg/apache/poi/sl/usermodel/TableShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Shape;
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
        "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
        "TS;TP;>;"
    }
.end annotation


# virtual methods
.method public abstract getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/poi/sl/usermodel/TableCell<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract getColumnWidth(I)D
.end method

.method public abstract getNumberOfColumns()I
.end method

.method public abstract getNumberOfRows()I
.end method

.method public abstract getRowHeight(I)D
.end method

.method public abstract setColumnWidth(ID)V
.end method

.method public abstract setRowHeight(ID)V
.end method
