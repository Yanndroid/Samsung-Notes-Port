.class public Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;
.super Lorg/codehaus/stax2/ri/evt/AttributeEventImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/events/Namespace;


# instance fields
.field public final mPrefix:Ljava/lang/String;

.field public final mURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)V
    .locals 7

    const-string v2, "xmlns"

    const-string v3, "http://www.w3.org/2000/xmlns/"

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/stax2/ri/evt/AttributeEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, ""

    iput-object p1, p0, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;->mPrefix:Ljava/lang/String;

    iput-object p2, p0, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;->mURI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v3, "http://www.w3.org/2000/xmlns/"

    const-string v4, "xmlns"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/stax2/ri/evt/AttributeEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p2, p0, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;->mPrefix:Ljava/lang/String;

    iput-object p3, p0, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;->mURI:Ljava/lang/String;

    return-void
.end method

.method public static constructDefaultNamespace(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;
    .locals 1

    new-instance v0, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)V

    return-object v0
.end method

.method public static constructNamespace(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p1, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;

    invoke-direct {p1, p0, p2}, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getEventType()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;->mURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultNamespaceDeclaration()Z
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNamespace()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
