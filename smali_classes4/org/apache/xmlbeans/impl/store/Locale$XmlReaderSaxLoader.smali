.class Lorg/apache/xmlbeans/impl/store/Locale$XmlReaderSaxLoader;
.super Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XmlReaderSaxLoader"
.end annotation


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/Locator;)V

    return-void
.end method
