.class public final Lcom/fasterxml/aalto/stax/EventFactoryImpl;
.super Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
