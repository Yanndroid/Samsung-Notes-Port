.class Lorg/apache/poi/sl/draw/DrawPaint$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/ColorStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sl/draw/DrawPaint;->getSolidPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Lorg/apache/poi/java/awt/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/sl/draw/DrawPaint;

.field public final synthetic val$modifier:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

.field public final synthetic val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/DrawPaint;Lorg/apache/poi/sl/usermodel/ColorStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->this$0:Lorg/apache/poi/sl/draw/DrawPaint;

    iput-object p2, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    iput-object p3, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$modifier:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getColor()Lorg/apache/poi/java/awt/Color;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getColor()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getHueMod()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getHueMod()I

    move-result v0

    return v0
.end method

.method public getHueOff()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getHueOff()I

    move-result v0

    return v0
.end method

.method public getLumMod()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getLumMod()I

    move-result v0

    return v0
.end method

.method public getLumOff()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getLumOff()I

    move-result v0

    return v0
.end method

.method public getSatMod()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getSatMod()I

    move-result v0

    return v0
.end method

.method public getSatOff()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getSatOff()I

    move-result v0

    return v0
.end method

.method public getShade()I
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getShade()I

    move-result v0

    sget-object v1, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier:[I

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$modifier:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x186a0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit16 v0, v0, 0x4e20

    :goto_0
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v1, 0x9c40

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getTint()I
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getTint()I

    move-result v0

    sget-object v1, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier:[I

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$modifier:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const v4, 0x186a0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit16 v0, v0, 0x4e20

    :goto_0
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v1, 0x9c40

    add-int/2addr v0, v1

    goto :goto_0
.end method
