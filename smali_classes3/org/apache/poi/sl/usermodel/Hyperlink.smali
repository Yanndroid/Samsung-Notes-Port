.class public interface abstract Lorg/apache/poi/sl/usermodel/Hyperlink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/Hyperlink;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;P::",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "TS;TP;*>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/common/usermodel/Hyperlink;"
    }
.end annotation


# virtual methods
.method public abstract linkToEmail(Ljava/lang/String;)V
.end method

.method public abstract linkToFirstSlide()V
.end method

.method public abstract linkToLastSlide()V
.end method

.method public abstract linkToNextSlide()V
.end method

.method public abstract linkToPreviousSlide()V
.end method

.method public abstract linkToSlide(Lorg/apache/poi/sl/usermodel/Slide;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "TS;TP;>;)V"
        }
    .end annotation
.end method

.method public abstract linkToUrl(Ljava/lang/String;)V
.end method
