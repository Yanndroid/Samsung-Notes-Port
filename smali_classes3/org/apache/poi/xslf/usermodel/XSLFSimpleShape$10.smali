.class Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/StrokeStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$10;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$10;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v0

    return-object v0
.end method

.method public getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$10;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    move-result-object v0

    return-object v0
.end method

.method public getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$10;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    return-object v0
.end method

.method public getLineWidth()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$10;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineWidth()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$10;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLinePaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    return-object v0
.end method
