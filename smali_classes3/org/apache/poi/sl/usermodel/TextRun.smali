.class public interface abstract Lorg/apache/poi/sl/usermodel/TextRun;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/usermodel/TextRun$FieldType;,
        Lorg/apache/poi/sl/usermodel/TextRun$TextCap;
    }
.end annotation


# virtual methods
.method public abstract createHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Hyperlink<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract getFieldType()Lorg/apache/poi/sl/usermodel/TextRun$FieldType;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end method

.method public abstract getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
.end method

.method public abstract getFontFamily()Ljava/lang/String;
.end method

.method public abstract getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
.end method

.method public abstract getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
.end method

.method public abstract getFontSize()Ljava/lang/Double;
.end method

.method public abstract getHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Hyperlink<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract getPitchAndFamily()B
.end method

.method public abstract getRawText()Ljava/lang/String;
.end method

.method public abstract getTextCap()Lorg/apache/poi/sl/usermodel/TextRun$TextCap;
.end method

.method public abstract isBold()Z
.end method

.method public abstract isItalic()Z
.end method

.method public abstract isStrikethrough()Z
.end method

.method public abstract isSubscript()Z
.end method

.method public abstract isSuperscript()Z
.end method

.method public abstract isUnderlined()Z
.end method

.method public abstract setBold(Z)V
.end method

.method public abstract setFontColor(Lorg/apache/poi/java/awt/Color;)V
.end method

.method public abstract setFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V
.end method

.method public abstract setFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setFontFamily(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V
.end method

.method public abstract setFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontInfo;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V
.end method

.method public abstract setFontSize(Ljava/lang/Double;)V
.end method

.method public abstract setItalic(Z)V
.end method

.method public abstract setStrikethrough(Z)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract setUnderlined(Z)V
.end method
