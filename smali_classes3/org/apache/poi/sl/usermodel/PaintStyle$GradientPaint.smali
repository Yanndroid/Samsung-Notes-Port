.class public interface abstract Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PaintStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/PaintStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GradientPaint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;
    }
.end annotation


# virtual methods
.method public abstract getGradientAngle()D
.end method

.method public abstract getGradientColors()[Lorg/apache/poi/sl/usermodel/ColorStyle;
.end method

.method public abstract getGradientFractions()[F
.end method

.method public abstract getGradientType()Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;
.end method

.method public abstract isRotatedWithShape()Z
.end method
