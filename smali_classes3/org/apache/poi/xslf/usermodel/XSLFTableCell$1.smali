.class Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/StrokeStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getBorderStyle(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

.field public final synthetic val$edge:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

.field public final synthetic val$width:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;->val$edge:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    iput-object p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;->val$width:Ljava/lang/Double;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;->val$edge:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getBorderCap(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v0

    return-object v0
.end method

.method public getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;->val$edge:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getBorderCompound(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    move-result-object v0

    return-object v0
.end method

.method public getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;->val$edge:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getBorderDash(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    return-object v0
.end method

.method public getLineWidth()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;->val$width:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;->val$edge:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getBorderColor(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/java/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v0

    return-object v0
.end method
