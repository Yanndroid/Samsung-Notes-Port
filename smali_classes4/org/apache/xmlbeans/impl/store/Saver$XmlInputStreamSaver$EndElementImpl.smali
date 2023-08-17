.class Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$EndElementImpl;
.super Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/xml/stream/EndElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndElementImpl"
.end annotation


# instance fields
.field private _name:Lorg/apache/xmlbeans/xml/stream/XMLName;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/xml/stream/XMLName;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$EndElementImpl;->_name:Lorg/apache/xmlbeans/xml/stream/XMLName;

    return-void
.end method


# virtual methods
.method public getName()Lorg/apache/xmlbeans/xml/stream/XMLName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$EndElementImpl;->_name:Lorg/apache/xmlbeans/xml/stream/XMLName;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
