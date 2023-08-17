.class public interface abstract Lorg/apache/xmlbeans/impl/store/Saaj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Saaj$SaajCallback;
    }
.end annotation


# static fields
.field public static final SAAJ_IMPL:Ljava/lang/String; = "SAAJ_IMPL"


# virtual methods
.method public abstract detail_addDetailEntry(Lorg/apache/xmlbeans/impl/soap/Detail;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/DetailEntry;
.end method

.method public abstract detail_getDetailEntries(Lorg/apache/xmlbeans/impl/soap/Detail;)Ljava/util/Iterator;
.end method

.method public abstract identifyElement(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/Class;
.end method

.method public abstract setCallback(Lorg/apache/xmlbeans/impl/store/Saaj$SaajCallback;)V
.end method

.method public abstract soapBody_addBodyElement(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;
.end method

.method public abstract soapBody_addDocument(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/w3c/dom/Document;)Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;
.end method

.method public abstract soapBody_addFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
.end method

.method public abstract soapBody_addFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
.end method

.method public abstract soapBody_addFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
.end method

.method public abstract soapBody_getFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Lorg/apache/xmlbeans/impl/soap/SOAPFault;
.end method

.method public abstract soapBody_hasFault(Lorg/apache/xmlbeans/impl/soap/SOAPBody;)Z
.end method

.method public abstract soapElement_addAttribute(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
.end method

.method public abstract soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
.end method

.method public abstract soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
.end method

.method public abstract soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
.end method

.method public abstract soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
.end method

.method public abstract soapElement_addChildElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
.end method

.method public abstract soapElement_addNamespaceDeclaration(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
.end method

.method public abstract soapElement_addTextNode(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
.end method

.method public abstract soapElement_getAllAttributes(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;
.end method

.method public abstract soapElement_getAttributeValue(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/lang/String;
.end method

.method public abstract soapElement_getChildElements(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;
.end method

.method public abstract soapElement_getChildElements(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Ljava/util/Iterator;
.end method

.method public abstract soapElement_getElementName(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Lorg/apache/xmlbeans/impl/soap/Name;
.end method

.method public abstract soapElement_getEncodingStyle(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/lang/String;
.end method

.method public abstract soapElement_getNamespacePrefixes(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;
.end method

.method public abstract soapElement_getNamespaceURI(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract soapElement_getVisibleNamespacePrefixes(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)Ljava/util/Iterator;
.end method

.method public abstract soapElement_removeAttribute(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Lorg/apache/xmlbeans/impl/soap/Name;)Z
.end method

.method public abstract soapElement_removeContents(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V
.end method

.method public abstract soapElement_removeNamespaceDeclaration(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)Z
.end method

.method public abstract soapElement_setEncodingStyle(Lorg/apache/xmlbeans/impl/soap/SOAPElement;Ljava/lang/String;)V
.end method

.method public abstract soapEnvelope_addBody(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;
.end method

.method public abstract soapEnvelope_addHeader(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;
.end method

.method public abstract soapEnvelope_createName(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;
.end method

.method public abstract soapEnvelope_createName(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;
.end method

.method public abstract soapEnvelope_getBody(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;
.end method

.method public abstract soapEnvelope_getHeader(Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;
.end method

.method public abstract soapFault_addDetail(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Detail;
.end method

.method public abstract soapFault_getDetail(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Detail;
.end method

.method public abstract soapFault_getFaultActor(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/lang/String;
.end method

.method public abstract soapFault_getFaultCode(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/lang/String;
.end method

.method public abstract soapFault_getFaultCodeAsName(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Lorg/apache/xmlbeans/impl/soap/Name;
.end method

.method public abstract soapFault_getFaultString(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/lang/String;
.end method

.method public abstract soapFault_getFaultStringLocale(Lorg/apache/xmlbeans/impl/soap/SOAPFault;)Ljava/util/Locale;
.end method

.method public abstract soapFault_setFaultActor(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V
.end method

.method public abstract soapFault_setFaultCode(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V
.end method

.method public abstract soapFault_setFaultCode(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Lorg/apache/xmlbeans/impl/soap/Name;)V
.end method

.method public abstract soapFault_setFaultString(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;)V
.end method

.method public abstract soapFault_setFaultString(Lorg/apache/xmlbeans/impl/soap/SOAPFault;Ljava/lang/String;Ljava/util/Locale;)V
.end method

.method public abstract soapHeaderElement_getActor(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;)Ljava/lang/String;
.end method

.method public abstract soapHeaderElement_getMustUnderstand(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;)Z
.end method

.method public abstract soapHeaderElement_setActor(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Ljava/lang/String;)V
.end method

.method public abstract soapHeaderElement_setMustUnderstand(Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;Z)V
.end method

.method public abstract soapHeader_addHeaderElement(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;
.end method

.method public abstract soapHeader_examineAllHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;)Ljava/util/Iterator;
.end method

.method public abstract soapHeader_examineHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)Ljava/util/Iterator;
.end method

.method public abstract soapHeader_examineMustUnderstandHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)Ljava/util/Iterator;
.end method

.method public abstract soapHeader_extractAllHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;)Ljava/util/Iterator;
.end method

.method public abstract soapHeader_extractHeaderElements(Lorg/apache/xmlbeans/impl/soap/SOAPHeader;Ljava/lang/String;)Ljava/util/Iterator;
.end method

.method public abstract soapNode_detachNode(Lorg/apache/xmlbeans/impl/soap/Node;)V
.end method

.method public abstract soapNode_getParentElement(Lorg/apache/xmlbeans/impl/soap/Node;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;
.end method

.method public abstract soapNode_getValue(Lorg/apache/xmlbeans/impl/soap/Node;)Ljava/lang/String;
.end method

.method public abstract soapNode_recycleNode(Lorg/apache/xmlbeans/impl/soap/Node;)V
.end method

.method public abstract soapNode_setParentElement(Lorg/apache/xmlbeans/impl/soap/Node;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V
.end method

.method public abstract soapNode_setValue(Lorg/apache/xmlbeans/impl/soap/Node;Ljava/lang/String;)V
.end method

.method public abstract soapPart_addMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract soapPart_getAllMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)Ljava/util/Iterator;
.end method

.method public abstract soapPart_getContent(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)Ljavax/xml/transform/Source;
.end method

.method public abstract soapPart_getEnvelope(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;
.end method

.method public abstract soapPart_getMatchingMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;)Ljava/util/Iterator;
.end method

.method public abstract soapPart_getMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract soapPart_getNonMatchingMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;[Ljava/lang/String;)Ljava/util/Iterator;
.end method

.method public abstract soapPart_removeAllMimeHeaders(Lorg/apache/xmlbeans/impl/soap/SOAPPart;)V
.end method

.method public abstract soapPart_removeMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;)V
.end method

.method public abstract soapPart_setContent(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljavax/xml/transform/Source;)V
.end method

.method public abstract soapPart_setMimeHeader(Lorg/apache/xmlbeans/impl/soap/SOAPPart;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract soapText_isComment(Lorg/apache/xmlbeans/impl/soap/Text;)Z
.end method
