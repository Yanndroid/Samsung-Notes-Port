.class public interface abstract Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/ShapeContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
.end method

.method public abstract createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
.end method

.method public abstract createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
.end method

.method public abstract createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
.end method

.method public abstract createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
.end method

.method public abstract createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;
.end method
