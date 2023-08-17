.class Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter;->renewTokens(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$filteredTokens:Ljava/util/List;

.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$redirects:Ljava/util/Map;

.field public final synthetic val$result:Ljava/util/List;

.field public final synthetic val$subIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/util/Map;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$filteredTokens:Ljava/util/List;

    iput p2, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$subIndex:I

    iput-object p3, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$redirects:Ljava/util/Map;

    iput-object p4, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$result:Ljava/util/List;

    iput-object p5, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$filteredTokens:Ljava/util/List;

    iget v1, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$subIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$redirects:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter;->renewToken(Ljava/lang/String;Lcom/microsoft/identity/common/java/cache/ITokenCacheItem;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$result:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
