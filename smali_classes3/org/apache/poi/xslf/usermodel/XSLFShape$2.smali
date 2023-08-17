.class final Lorg/apache/poi/xslf/usermodel/XSLFShape$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/sl/usermodel/PaintStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$blip:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

.field public final synthetic val$parentPart:Lorg/apache/poi/openxml4j/opc/PackagePart;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$2;->val$blip:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$2;->val$parentPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$2;->val$blip:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$2;->val$parentPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$2;->val$parentPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAlpha()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$2;->val$blip:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->sizeOfAlphaModFixArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$2;->val$blip:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getAlphaModFixArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;->getAmt()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x186a0

    :goto_0
    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape$2;->getPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageData()Ljava/io/InputStream;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape$2;->getPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
