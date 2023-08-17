.class public final synthetic Lorg/apache/poi/javax/imageio/spi/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:Lorg/apache/poi/javax/imageio/spi/SubRegistry;

.field public final synthetic b:Lorg/apache/poi/javax/imageio/spi/RegisterableService;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/javax/imageio/spi/SubRegistry;Lorg/apache/poi/javax/imageio/spi/RegisterableService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/spi/a;->a:Lorg/apache/poi/javax/imageio/spi/SubRegistry;

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/spi/a;->b:Lorg/apache/poi/javax/imageio/spi/RegisterableService;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/a;->a:Lorg/apache/poi/javax/imageio/spi/SubRegistry;

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/spi/a;->b:Lorg/apache/poi/javax/imageio/spi/RegisterableService;

    invoke-static {v0, v1}, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->a(Lorg/apache/poi/javax/imageio/spi/SubRegistry;Lorg/apache/poi/javax/imageio/spi/RegisterableService;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
