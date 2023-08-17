.class Lorg/apache/poi/javax/imageio/metadata/IIOMetadata$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getMetadataFormat(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

.field public final synthetic val$o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata$1;->this$0:Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata$1;->val$o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata$1;->val$o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
