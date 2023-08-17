.class public Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private _location:Lorg/apache/poi/javax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;->setLocation(Lorg/apache/poi/javax/xml/stream/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;->setLocation(Lorg/apache/poi/javax/xml/stream/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;->setLocation(Lorg/apache/poi/javax/xml/stream/Location;)V

    return-void
.end method


# virtual methods
.method public getLocation()Lorg/apache/poi/javax/xml/stream/Location;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;->_location:Lorg/apache/poi/javax/xml/stream/Location;

    return-object v0
.end method

.method public setLocation(Lorg/apache/poi/javax/xml/stream/Location;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;->_location:Lorg/apache/poi/javax/xml/stream/Location;

    return-void
.end method
