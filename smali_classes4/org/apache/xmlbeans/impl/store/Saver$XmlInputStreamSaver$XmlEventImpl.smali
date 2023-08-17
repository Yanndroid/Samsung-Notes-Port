.class abstract Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;
.super Lorg/apache/xmlbeans/impl/common/XmlEventBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "XmlEventImpl"
.end annotation


# instance fields
.field public _next:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/common/XmlEventBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getLocation()Lorg/apache/xmlbeans/xml/stream/Location;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Lorg/apache/xmlbeans/xml/stream/XMLName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaType()Lorg/apache/xmlbeans/xml/stream/XMLName;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasName()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
