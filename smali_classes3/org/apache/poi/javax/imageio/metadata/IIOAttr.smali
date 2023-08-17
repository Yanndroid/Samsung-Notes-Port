.class Lorg/apache/poi/javax/imageio/metadata/IIOAttr;
.super Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Attr;


# instance fields
.field public name:Ljava/lang/String;

.field public owner:Lorg/w3c/dom/Element;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOAttr;->owner:Lorg/w3c/dom/Element;

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/metadata/IIOAttr;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/poi/javax/imageio/metadata/IIOAttr;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOAttr;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOAttr;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOAttr;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOAttr;->owner:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getSpecified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOAttr;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOAttr;->value:Ljava/lang/String;

    return-void
.end method

.method public setOwnerElement(Lorg/w3c/dom/Element;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOAttr;->owner:Lorg/w3c/dom/Element;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOAttr;->value:Ljava/lang/String;

    return-void
.end method
