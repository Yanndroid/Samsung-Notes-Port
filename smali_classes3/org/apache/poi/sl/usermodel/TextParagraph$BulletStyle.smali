.class public interface abstract Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/TextParagraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BulletStyle"
.end annotation


# virtual methods
.method public abstract getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
.end method

.method public abstract getAutoNumberingStartAt()Ljava/lang/Integer;
.end method

.method public abstract getBulletCharacter()Ljava/lang/String;
.end method

.method public abstract getBulletFont()Ljava/lang/String;
.end method

.method public abstract getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
.end method

.method public abstract getBulletFontSize()Ljava/lang/Double;
.end method

.method public abstract setBulletFontColor(Lorg/apache/poi/java/awt/Color;)V
.end method

.method public abstract setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V
.end method
