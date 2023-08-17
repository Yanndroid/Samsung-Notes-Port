.class public interface abstract Lorg/apache/poi/sl/usermodel/Slide;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Sheet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;P::",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "TS;TP;*>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/Sheet<",
        "TS;TP;>;"
    }
.end annotation


# virtual methods
.method public abstract getDisplayPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Z
.end method

.method public abstract getFollowMasterBackground()Z
.end method

.method public abstract getFollowMasterColourScheme()Z
.end method

.method public abstract getFollowMasterObjects()Z
.end method

.method public abstract getNotes()Lorg/apache/poi/sl/usermodel/Notes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Notes<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract getSlideNumber()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract setFollowMasterBackground(Z)V
.end method

.method public abstract setFollowMasterColourScheme(Z)V
.end method

.method public abstract setFollowMasterObjects(Z)V
.end method

.method public abstract setNotes(Lorg/apache/poi/sl/usermodel/Notes;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Notes<",
            "TS;TP;>;)V"
        }
    .end annotation
.end method
