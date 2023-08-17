.class Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObjectValue"
.end annotation


# instance fields
.field public arrayMaxLength:I

.field public arrayMinLength:I

.field public classType:Ljava/lang/Class;

.field public defaultValue:Ljava/lang/Object;

.field public enumeratedValues:Ljava/util/List;

.field public maxValue:Ljava/lang/Comparable;

.field public minValue:Ljava/lang/Comparable;

.field public final synthetic this$0:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;

.field public valueType:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->this$0:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->valueType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->classType:Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->defaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->enumeratedValues:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->minValue:Ljava/lang/Comparable;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->maxValue:Ljava/lang/Comparable;

    iput p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->arrayMinLength:I

    iput p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->arrayMaxLength:I

    return-void
.end method
