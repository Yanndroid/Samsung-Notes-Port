.class public interface abstract Lorg/apache/poi/sl/usermodel/TextParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;,
        Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;,
        Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;P::",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "TS;TP;TT;>;T::",
        "Lorg/apache/poi/sl/usermodel/TextRun;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getBulletStyle()Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;
.end method

.method public abstract getDefaultFontFamily()Ljava/lang/String;
.end method

.method public abstract getDefaultFontSize()Ljava/lang/Double;
.end method

.method public abstract getDefaultTabSize()Ljava/lang/Double;
.end method

.method public abstract getFontAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;
.end method

.method public abstract getIndent()Ljava/lang/Double;
.end method

.method public abstract getIndentLevel()I
.end method

.method public abstract getLeftMargin()Ljava/lang/Double;
.end method

.method public abstract getLineSpacing()Ljava/lang/Double;
.end method

.method public abstract getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/TextShape<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract getRightMargin()Ljava/lang/Double;
.end method

.method public abstract getSpaceAfter()Ljava/lang/Double;
.end method

.method public abstract getSpaceBefore()Ljava/lang/Double;
.end method

.method public abstract getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
.end method

.method public abstract getTextRuns()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract isHeaderOrFooter()Z
.end method

.method public varargs abstract setBulletStyle([Ljava/lang/Object;)V
.end method

.method public abstract setIndent(Ljava/lang/Double;)V
.end method

.method public abstract setIndentLevel(I)V
.end method

.method public abstract setLeftMargin(Ljava/lang/Double;)V
.end method

.method public abstract setLineSpacing(Ljava/lang/Double;)V
.end method

.method public abstract setRightMargin(Ljava/lang/Double;)V
.end method

.method public abstract setSpaceAfter(Ljava/lang/Double;)V
.end method

.method public abstract setSpaceBefore(Ljava/lang/Double;)V
.end method

.method public abstract setTextAlign(Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;)V
.end method
