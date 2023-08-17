.class public interface abstract Lorg/apache/poi/sl/usermodel/Sheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/ShapeContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;P::",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "TS;TP;*>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
        "TS;TP;>;"
    }
.end annotation


# virtual methods
.method public abstract draw(Lorg/apache/poi/java/awt/Graphics2D;)V
.end method

.method public abstract getBackground()Lorg/apache/poi/sl/usermodel/Background;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Background<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract getFollowMasterGraphics()Z
.end method

.method public abstract getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract getSlideShow()Lorg/apache/poi/sl/usermodel/SlideShow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "TS;TP;>;"
        }
    .end annotation
.end method
