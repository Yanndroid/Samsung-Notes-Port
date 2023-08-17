.class Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$NormalAttributeImpl;
.super Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$AttributeImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NormalAttributeImpl"
.end annotation


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/xml/stream/XMLName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$AttributeImpl;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$AttributeImpl;->_name:Lorg/apache/xmlbeans/xml/stream/XMLName;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$NormalAttributeImpl;->_value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$NormalAttributeImpl;->_value:Ljava/lang/String;

    return-object v0
.end method
