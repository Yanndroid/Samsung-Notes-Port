.class Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/FillStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;
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

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$9;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$9;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    return-object v0
.end method
