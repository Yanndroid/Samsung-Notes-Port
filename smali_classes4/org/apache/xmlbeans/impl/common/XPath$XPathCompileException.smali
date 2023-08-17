.class public Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException;
.super Lorg/apache/xmlbeans/XmlException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/common/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XPathCompileException"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/XmlError;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/xmlbeans/XmlError;)V

    return-void
.end method
