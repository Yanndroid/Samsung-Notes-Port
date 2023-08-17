.class public Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheEntry;,
        Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheKey;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x1e

.field private static final CACHE_TTL_FOR_NULLS_MS:J = 0x5dcL

.field private static final CACHE_TTL_MS:J = 0x7530L

.field private static CONTENT_URI:Ljava/lang/String; = "content://com.microsoft.intune.mam.policy/mamserviceenrollments"

.field private static PROJECTION:[Ljava/lang/String; = null

.field private static SELECTION:Ljava/lang/String; = "WHERE PackageName = ? AND Identity = ?"

.field private static final TAG:Ljava/lang/String; = "IntuneMAMEnrollmentIdGateway"

.field public static sInstance:Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;


# instance fields
.field private final mIdCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheKey;",
            "Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "EnrollmentId"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;->mIdCache:Landroid/util/LruCache;

    return-void
.end method

.method private callContentProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "IntuneMAMEnrollmentIdGateway:callContentProvider"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v6, v1

    const/4 p3, 0x1

    aput-object p2, v6, p3

    sget-object p2, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;->CONTENT_URI:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;->SELECTION:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const-string p1, "Cursor was null.  The content provider may not be available. "

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to query enrollment id: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;
    .locals 2

    const-class v0, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;->sInstance:Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;-><init>()V

    sput-object v1, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;->sInstance:Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;

    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;->sInstance:Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getEnrollmentId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheKey;

    invoke-direct {v0, p2, p3}, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;->mIdCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheEntry;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheEntry;->expired()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;->callContentProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheEntry;

    invoke-direct {v1, p1}, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheEntry;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;->mIdCache:Landroid/util/LruCache;

    invoke-virtual {p1, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, v1, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheEntry;->enrollmentId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
