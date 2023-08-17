.class Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartDocumentImpl;
.super Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/xml/stream/StartDocument;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartDocumentImpl"
.end annotation


# instance fields
.field public _encoding:Ljava/lang/String;

.field public _standAlone:Z

.field public _systemID:Ljava/lang/String;

.field public _version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartDocumentImpl;->_systemID:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartDocumentImpl;->_encoding:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartDocumentImpl;->_standAlone:Z

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartDocumentImpl;->_version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartDocumentImpl;->_encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartDocumentImpl;->_systemID:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartDocumentImpl;->_version:Ljava/lang/String;

    return-object v0
.end method

.method public isStandalone()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartDocumentImpl;->_standAlone:Z

    return v0
.end method
