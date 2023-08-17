.class public Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;
.super Lorg/apache/poi/javax/imageio/IIOException;
.source "SourceFile"


# instance fields
.field public offendingNode:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;->offendingNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;->offendingNode:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public getOffendingNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;->offendingNode:Lorg/w3c/dom/Node;

    return-object v0
.end method
