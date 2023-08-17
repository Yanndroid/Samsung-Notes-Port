.class Lorg/apache/poi/javax/xml/stream/FactoryFinder$ClassLoaderFinderConcrete;
.super Lorg/apache/poi/javax/xml/stream/FactoryFinder$ClassLoaderFinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/xml/stream/FactoryFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassLoaderFinderConcrete"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/javax/xml/stream/FactoryFinder$ClassLoaderFinder;-><init>(Lorg/apache/poi/javax/xml/stream/FactoryFinder$1;)V

    return-void
.end method


# virtual methods
.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
