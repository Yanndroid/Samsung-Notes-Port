.class Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/LineDecoration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration;
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

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$8;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeadLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$8;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineHeadLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v0

    return-object v0
.end method

.method public getHeadShape()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$8;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineHeadDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v0

    return-object v0
.end method

.method public getHeadWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$8;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineHeadWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v0

    return-object v0
.end method

.method public getTailLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$8;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineTailLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v0

    return-object v0
.end method

.method public getTailShape()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$8;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineTailDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v0

    return-object v0
.end method

.method public getTailWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$8;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineTailWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v0

    return-object v0
.end method
