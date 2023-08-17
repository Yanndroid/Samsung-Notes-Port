.class Lorg/apache/poi/javax/imageio/spi/IIORegistry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/javax/imageio/spi/IIORegistry;->registerInstalledProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/javax/imageio/spi/IIORegistry;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/spi/IIORegistry;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/spi/IIORegistry$1;->this$0:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/IIORegistry$1;->this$0:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getCategories()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/ServiceLoader;->loadInstalled(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/spi/IIOServiceProvider;

    iget-object v3, p0, Lorg/apache/poi/javax/imageio/spi/IIORegistry$1;->this$0:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    invoke-virtual {v3, v2}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->registerServiceProvider(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method
