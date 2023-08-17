.class Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$XmlnsAttributeImpl;
.super Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$AttributeImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XmlnsAttributeImpl"
.end annotation


# instance fields
.field private _uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$AttributeImpl;-><init>()V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$XmlnsAttributeImpl;->_uri:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x0

    const-string v1, "xmlns"

    if-nez p2, :cond_0

    move-object p1, v1

    move-object v1, v0

    :cond_0
    new-instance p2, Lorg/apache/xmlbeans/impl/common/XmlNameImpl;

    invoke-direct {p2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/XmlNameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$AttributeImpl;->_name:Lorg/apache/xmlbeans/xml/stream/XMLName;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$XmlnsAttributeImpl;->_uri:Ljava/lang/String;

    return-object v0
.end method
