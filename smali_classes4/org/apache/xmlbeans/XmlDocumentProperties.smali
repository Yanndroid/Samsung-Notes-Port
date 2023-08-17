.class public abstract Lorg/apache/xmlbeans/XmlDocumentProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOCTYPE_NAME:Ljava/lang/Object;

.field public static final DOCTYPE_PUBLIC_ID:Ljava/lang/Object;

.field public static final DOCTYPE_SYSTEM_ID:Ljava/lang/Object;

.field public static final ENCODING:Ljava/lang/Object;

.field public static final MESSAGE_DIGEST:Ljava/lang/Object;

.field public static final SOURCE_NAME:Ljava/lang/Object;

.field public static final STANDALONE:Ljava/lang/Object;

.field public static final VERSION:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->SOURCE_NAME:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->ENCODING:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->VERSION:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->STANDALONE:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->DOCTYPE_NAME:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->DOCTYPE_PUBLIC_ID:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->DOCTYPE_SYSTEM_ID:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->MESSAGE_DIGEST:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public getDoctypeName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->DOCTYPE_NAME:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDoctypePublicId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->DOCTYPE_PUBLIC_ID:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDoctypeSystemId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->DOCTYPE_SYSTEM_ID:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->ENCODING:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMessageDigest()[B
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->MESSAGE_DIGEST:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->SOURCE_NAME:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStandalone()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->STANDALONE:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->VERSION:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract remove(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public setDoctypeName(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->DOCTYPE_NAME:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDoctypePublicId(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->DOCTYPE_PUBLIC_ID:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDoctypeSystemId(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->DOCTYPE_SYSTEM_ID:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->ENCODING:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMessageDigest([B)V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->MESSAGE_DIGEST:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSourceName(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->SOURCE_NAME:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStandalone(Z)V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->STANDALONE:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlDocumentProperties;->VERSION:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
