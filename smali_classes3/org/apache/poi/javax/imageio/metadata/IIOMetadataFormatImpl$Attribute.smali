.class Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Attribute"
.end annotation


# instance fields
.field public attrName:Ljava/lang/String;

.field public dataType:I

.field public defaultValue:Ljava/lang/String;

.field public enumeratedValues:Ljava/util/List;

.field public listMaxLength:I

.field public listMinLength:I

.field public maxValue:Ljava/lang/String;

.field public minValue:Ljava/lang/String;

.field public required:Z

.field public final synthetic this$0:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;

.field public valueType:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->this$0:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->valueType:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->defaultValue:Ljava/lang/String;

    return-void
.end method
