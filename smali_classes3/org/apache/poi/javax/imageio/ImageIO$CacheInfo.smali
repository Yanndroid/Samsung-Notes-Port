.class Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/ImageIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheInfo"
.end annotation


# instance fields
.field public cacheDirectory:Ljava/io/File;

.field public hasPermission:Ljava/lang/Boolean;

.field public useCache:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->useCache:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->cacheDirectory:Ljava/io/File;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->hasPermission:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getCacheDirectory()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->cacheDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getHasPermission()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->hasPermission:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUseCache()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->useCache:Z

    return v0
.end method

.method public setCacheDirectory(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->cacheDirectory:Ljava/io/File;

    return-void
.end method

.method public setHasPermission(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->hasPermission:Ljava/lang/Boolean;

    return-void
.end method

.method public setUseCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->useCache:Z

    return-void
.end method
