.class abstract Lorg/apache/poi/javax/xml/stream/FactoryFinder$ClassLoaderFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/xml/stream/FactoryFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ClassLoaderFinder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/javax/xml/stream/FactoryFinder$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/xml/stream/FactoryFinder$ClassLoaderFinder;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContextClassLoader()Ljava/lang/ClassLoader;
.end method
