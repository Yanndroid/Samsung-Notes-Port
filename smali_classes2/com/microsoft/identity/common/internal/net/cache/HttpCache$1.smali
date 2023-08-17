.class Lcom/microsoft/identity/common/internal/net/cache/HttpCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/cache/HttpCache$IHttpCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/net/cache/HttpCache;->initialize(Ljava/io/File;Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    invoke-static {}, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;->flush()V

    return-void
.end method
