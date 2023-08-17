.class Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getResource(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$1;->this$0:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
