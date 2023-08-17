.class public interface abstract Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/XMLStreamConstants;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getAttributeCount()I
.end method

.method public abstract getAttributeLocalName(I)Ljava/lang/String;
.end method

.method public abstract getAttributeName(I)Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getAttributeNamespace(I)Ljava/lang/String;
.end method

.method public abstract getAttributePrefix(I)Ljava/lang/String;
.end method

.method public abstract getAttributeType(I)Ljava/lang/String;
.end method

.method public abstract getAttributeValue(I)Ljava/lang/String;
.end method

.method public abstract getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCharacterEncodingScheme()Ljava/lang/String;
.end method

.method public abstract getElementText()Ljava/lang/String;
.end method

.method public abstract getEncoding()Ljava/lang/String;
.end method

.method public abstract getEventType()I
.end method

.method public abstract getLocalName()Ljava/lang/String;
.end method

.method public abstract getLocation()Lorg/apache/poi/javax/xml/stream/Location;
.end method

.method public abstract getName()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
.end method

.method public abstract getNamespaceCount()I
.end method

.method public abstract getNamespacePrefix(I)Ljava/lang/String;
.end method

.method public abstract getNamespaceURI()Ljava/lang/String;
.end method

.method public abstract getNamespaceURI(I)Ljava/lang/String;
.end method

.method public abstract getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPIData()Ljava/lang/String;
.end method

.method public abstract getPITarget()Ljava/lang/String;
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTextCharacters(I[CII)I
.end method

.method public abstract getTextCharacters()[C
.end method

.method public abstract getTextLength()I
.end method

.method public abstract getTextStart()I
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasNext()Z
.end method

.method public abstract hasText()Z
.end method

.method public abstract isAttributeSpecified(I)Z
.end method

.method public abstract isCharacters()Z
.end method

.method public abstract isEndElement()Z
.end method

.method public abstract isStandalone()Z
.end method

.method public abstract isStartElement()Z
.end method

.method public abstract isWhiteSpace()Z
.end method

.method public abstract next()I
.end method

.method public abstract nextTag()I
.end method

.method public abstract require(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract standaloneSet()Z
.end method
