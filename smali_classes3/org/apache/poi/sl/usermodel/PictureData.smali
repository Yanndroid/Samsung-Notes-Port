.class public interface abstract Lorg/apache/poi/sl/usermodel/PictureData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    }
.end annotation


# virtual methods
.method public abstract getChecksum()[B
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getData()[B
.end method

.method public abstract getImageDimension()Lorg/apache/poi/java/awt/Dimension;
.end method

.method public abstract getImageDimensionInPixels()Lorg/apache/poi/java/awt/Dimension;
.end method

.method public abstract getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
.end method

.method public abstract setData([B)V
.end method
