.class public interface abstract Lorg/apache/poi/sl/usermodel/TextShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/SimpleShape;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;,
        Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;,
        Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;
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
        "Lorg/apache/poi/sl/usermodel/SimpleShape<",
        "TS;TP;>;",
        "Ljava/lang/Iterable<",
        "TP;>;"
    }
.end annotation


# virtual methods
.method public abstract appendText(Ljava/lang/String;Z)Lorg/apache/poi/sl/usermodel/TextRun;
.end method

.method public abstract getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTextDirection()Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;
.end method

.method public abstract getTextHeight()D
.end method

.method public abstract getTextHeight(Lorg/apache/poi/java/awt/Graphics2D;)D
.end method

.method public abstract getTextParagraphs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "TS;TP;*>;>;"
        }
    .end annotation
.end method

.method public abstract getTextPlaceholder()Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;
.end method

.method public abstract getTextRotation()Ljava/lang/Double;
.end method

.method public abstract getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;
.end method

.method public abstract getWordWrap()Z
.end method

.method public abstract isHorizontalCentered()Z
.end method

.method public abstract resizeToFitText()Lorg/apache/poi/java/awt/geom/Rectangle2D;
.end method

.method public abstract resizeToFitText(Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
.end method

.method public abstract setHorizontalCentered(Ljava/lang/Boolean;)V
.end method

.method public abstract setInsets(Lorg/apache/poi/sl/usermodel/Insets2D;)V
.end method

.method public abstract setText(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/TextRun;
.end method

.method public abstract setTextDirection(Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;)V
.end method

.method public abstract setTextPlaceholder(Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;)V
.end method

.method public abstract setTextRotation(Ljava/lang/Double;)V
.end method

.method public abstract setVerticalAlignment(Lorg/apache/poi/sl/usermodel/VerticalAlignment;)V
.end method

.method public abstract setWordWrap(Z)V
.end method
