.class public interface abstract Lorg/apache/poi/sl/usermodel/TableCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextShape;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;P::",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "TS;TP;*>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/TextShape<",
        "TS;TP;>;"
    }
.end annotation


# virtual methods
.method public abstract getBorderStyle(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle;
.end method

.method public abstract getGridSpan()I
.end method

.method public abstract getRowSpan()I
.end method

.method public abstract isMerged()Z
.end method

.method public abstract removeBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)V
.end method

.method public abstract setBorderColor(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/java/awt/Color;)V
.end method

.method public abstract setBorderCompound(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V
.end method

.method public abstract setBorderDash(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V
.end method

.method public abstract setBorderStyle(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle;)V
.end method

.method public abstract setBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;D)V
.end method
