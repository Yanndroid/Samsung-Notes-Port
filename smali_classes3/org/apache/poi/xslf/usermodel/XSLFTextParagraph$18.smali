.class Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletStyle()Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$18;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$18;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v0

    return-object v0
.end method

.method public getAutoNumberingStartAt()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$18;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getAutoNumberingStartAt()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getBulletCharacter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$18;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletCharacter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBulletFont()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$18;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$18;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBulletFontSize()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$18;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontSize()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public setBulletFontColor(Lorg/apache/poi/java/awt/Color;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/java/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$18;->setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    return-void
.end method

.method public setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$18;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    return-void
.end method
