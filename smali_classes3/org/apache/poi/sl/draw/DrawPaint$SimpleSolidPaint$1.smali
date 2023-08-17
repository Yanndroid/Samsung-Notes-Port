.class Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/ColorStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;-><init>(Lorg/apache/poi/java/awt/Color;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;

.field public final synthetic val$color:Lorg/apache/poi/java/awt/Color;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;Lorg/apache/poi/java/awt/Color;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint$1;->this$0:Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;

    iput-object p2, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint$1;->val$color:Lorg/apache/poi/java/awt/Color;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint$1;->val$color:Lorg/apache/poi/java/awt/Color;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Color;->getAlpha()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getColor()Lorg/apache/poi/java/awt/Color;
    .locals 4

    new-instance v0, Lorg/apache/poi/java/awt/Color;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint$1;->val$color:Lorg/apache/poi/java/awt/Color;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Color;->getRed()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint$1;->val$color:Lorg/apache/poi/java/awt/Color;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Color;->getGreen()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint$1;->val$color:Lorg/apache/poi/java/awt/Color;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Color;->getBlue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/java/awt/Color;-><init>(III)V

    return-object v0
.end method

.method public getHueMod()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getHueOff()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getLumMod()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getLumOff()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSatMod()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSatOff()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getShade()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTint()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
