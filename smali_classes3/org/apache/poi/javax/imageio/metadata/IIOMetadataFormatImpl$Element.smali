.class Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Element"
.end annotation


# instance fields
.field public attrList:Ljava/util/List;

.field public attrMap:Ljava/util/Map;

.field public childList:Ljava/util/List;

.field public childPolicy:I

.field public elementName:Ljava/lang/String;

.field public maxChildren:I

.field public minChildren:I

.field public objectValue:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

.field public parentList:Ljava/util/List;

.field public final synthetic this$0:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->this$0:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->minChildren:I

    iput p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->maxChildren:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->childList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->parentList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrList:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrMap:Ljava/util/Map;

    return-void
.end method
