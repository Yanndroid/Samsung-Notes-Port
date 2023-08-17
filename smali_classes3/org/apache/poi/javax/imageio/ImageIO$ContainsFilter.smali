.class Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/ImageIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContainsFilter"
.end annotation


# instance fields
.field public method:Ljava/lang/reflect/Method;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;->method:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;->method:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;->name:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/apache/poi/javax/imageio/ImageIO;->access$200([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method
