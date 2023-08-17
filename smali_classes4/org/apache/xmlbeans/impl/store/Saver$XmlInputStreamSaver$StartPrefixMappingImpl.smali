.class Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartPrefixMappingImpl;
.super Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/xml/stream/StartPrefixMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartPrefixMappingImpl"
.end annotation


# instance fields
.field private _prefix:Ljava/lang/String;

.field private _uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartPrefixMappingImpl;->_prefix:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartPrefixMappingImpl;->_uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNamespaceUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartPrefixMappingImpl;->_uri:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartPrefixMappingImpl;->_prefix:Ljava/lang/String;

    return-object v0
.end method
