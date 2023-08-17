.class Lorg/apache/xmlbeans/impl/store/DomImpl$CdataNode;
.super Lorg/apache/xmlbeans/impl/store/DomImpl$TextNode;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/CDATASection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/DomImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdataNode"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$TextNode;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "#cdata-section"

    return-object v0
.end method

.method public nodeType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
