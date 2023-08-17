.class Lorg/apache/poi/xslf/usermodel/XSLFColor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/ColorStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFColor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFColor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFColor;

    const-string v1, "alpha"

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$100(Lorg/apache/poi/xslf/usermodel/XSLFColor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColor()Lorg/apache/poi/java/awt/Color;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$000(Lorg/apache/poi/xslf/usermodel/XSLFColor;)Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getHueMod()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFColor;

    const-string v1, "hueMod"

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$100(Lorg/apache/poi/xslf/usermodel/XSLFColor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHueOff()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFColor;

    const-string v1, "hueOff"

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$100(Lorg/apache/poi/xslf/usermodel/XSLFColor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLumMod()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFColor;

    const-string v1, "lumMod"

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$100(Lorg/apache/poi/xslf/usermodel/XSLFColor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLumOff()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFColor;

    const-string v1, "lumOff"

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$100(Lorg/apache/poi/xslf/usermodel/XSLFColor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSatMod()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFColor;

    const-string v1, "satMod"

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$100(Lorg/apache/poi/xslf/usermodel/XSLFColor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSatOff()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFColor;

    const-string v1, "satOff"

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$100(Lorg/apache/poi/xslf/usermodel/XSLFColor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getShade()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFColor;

    const-string/jumbo v1, "shade"

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$100(Lorg/apache/poi/xslf/usermodel/XSLFColor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTint()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFColor$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFColor;

    const-string/jumbo v1, "tint"

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->access$100(Lorg/apache/poi/xslf/usermodel/XSLFColor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
