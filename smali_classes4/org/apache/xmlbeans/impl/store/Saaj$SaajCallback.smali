.class public interface abstract Lorg/apache/xmlbeans/impl/store/Saaj$SaajCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saaj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SaajCallback"
.end annotation


# virtual methods
.method public abstract createSoapElement(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/w3c/dom/Element;
.end method

.method public abstract getSaajData(Lorg/w3c/dom/Node;)Ljava/lang/Object;
.end method

.method public abstract importSoapElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;ZLorg/apache/poi/javax/xml/namespace/QName;)Lorg/w3c/dom/Element;
.end method

.method public abstract setSaajData(Lorg/w3c/dom/Node;Ljava/lang/Object;)V
.end method
