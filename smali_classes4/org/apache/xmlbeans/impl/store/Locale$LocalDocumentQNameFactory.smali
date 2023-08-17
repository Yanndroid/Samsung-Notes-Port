.class final Lorg/apache/xmlbeans/impl/store/Locale$LocalDocumentQNameFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/QNameFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalDocumentQNameFactory"
.end annotation


# instance fields
.field private _cache:Lorg/apache/xmlbeans/QNameCache;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xmlbeans/QNameCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/QNameCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$LocalDocumentQNameFactory;->_cache:Lorg/apache/xmlbeans/QNameCache;

    return-void
.end method


# virtual methods
.method public getQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$LocalDocumentQNameFactory;->_cache:Lorg/apache/xmlbeans/QNameCache;

    const-string v1, ""

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/QNameCache;->getName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1
.end method

.method public getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$LocalDocumentQNameFactory;->_cache:Lorg/apache/xmlbeans/QNameCache;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xmlbeans/QNameCache;->getName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1
.end method

.method public getQName([CII[CII)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$LocalDocumentQNameFactory;->_cache:Lorg/apache/xmlbeans/QNameCache;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p4, p5, p6}, Ljava/lang/String;-><init>([CII)V

    const-string p2, ""

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/xmlbeans/QNameCache;->getName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1
.end method

.method public getQName([CII[CII[CII)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale$LocalDocumentQNameFactory;->_cache:Lorg/apache/xmlbeans/QNameCache;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p4, p5, p6}, Ljava/lang/String;-><init>([CII)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p7, p8, p9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/xmlbeans/QNameCache;->getName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1
.end method
