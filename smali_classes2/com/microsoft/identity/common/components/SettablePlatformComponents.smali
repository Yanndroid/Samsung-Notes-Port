.class public Lcom/microsoft/identity/common/components/SettablePlatformComponents;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;
    }
.end annotation


# static fields
.field public static final NONFUNCTIONAL_POP_MANAGER:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;


# instance fields
.field private final mAuthorizationStrategyFactory:Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;

.field private final mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

.field private final mDefaultDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

.field private final mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

.field private final mEncryptedFileStores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mEncryptedStores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mFileStores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlatformUtil:Lcom/microsoft/identity/common/java/util/IPlatformUtil;

.field private final mStateGenerator:Lcom/microsoft/identity/common/java/providers/oauth2/IStateGenerator;

.field private final mStorageEncryptionManager:Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;

.field private final mStores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private static $default$authorizationStrategyFactory()Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$6;

    invoke-direct {v0}, Lcom/microsoft/identity/common/components/SettablePlatformComponents$6;-><init>()V

    return-object v0
.end method

.method private static $default$devicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->NONFUNCTIONAL_POP_MANAGER:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    return-object v0
.end method

.method private static $default$storageEncryptionManager()Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$5;

    invoke-direct {v0}, Lcom/microsoft/identity/common/components/SettablePlatformComponents$5;-><init>()V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$1;

    invoke-direct {v0}, Lcom/microsoft/identity/common/components/SettablePlatformComponents$1;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->NONFUNCTIONAL_POP_MANAGER:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$2;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/components/SettablePlatformComponents$2;-><init>(Lcom/microsoft/identity/common/components/SettablePlatformComponents;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    sget-object v0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->NONFUNCTIONAL_POP_MANAGER:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    iput-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mDefaultDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mStores:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mEncryptedStores:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mEncryptedFileStores:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mFileStores:Ljava/util/Map;

    new-instance v0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$3;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/components/SettablePlatformComponents$3;-><init>(Lcom/microsoft/identity/common/components/SettablePlatformComponents;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mStateGenerator:Lcom/microsoft/identity/common/java/providers/oauth2/IStateGenerator;

    new-instance v0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$4;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/components/SettablePlatformComponents$4;-><init>(Lcom/microsoft/identity/common/components/SettablePlatformComponents;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mPlatformUtil:Lcom/microsoft/identity/common/java/util/IPlatformUtil;

    iput-object p1, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mStorageEncryptionManager:Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;

    iput-object p2, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    iput-object p3, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mAuthorizationStrategyFactory:Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;

    return-void
.end method

.method public static synthetic access$000()Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
    .locals 1

    invoke-static {}, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->$default$storageEncryptionManager()Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$100()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    .locals 1

    invoke-static {}, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->$default$devicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$200()Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;
    .locals 1

    invoke-static {}, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->$default$authorizationStrategyFactory()Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAuthorizationStrategyFactory()Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mAuthorizationStrategyFactory:Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;

    return-object v0
.end method

.method public getBroadcaster()Lcom/microsoft/identity/common/java/util/IBroadcaster;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClockSkewManager()Lcom/microsoft/identity/common/java/util/IClockSkewManager;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultDevicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mDefaultDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    return-object v0
.end method

.method public getDevicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    return-object v0
.end method

.method public getDevicePopManager(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Llombok/NonNull;
    .end annotation

    iget-object p1, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mDevicePopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    return-object p1
.end method

.method public declared-synchronized getEncryptedFileStore(Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;)Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mEncryptedFileStores:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mEncryptedFileStores:Ljava/util/Map;

    invoke-static {}, Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager;->builder()Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager$MapBackedPreferencesManagerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager$MapBackedPreferencesManagerBuilder;->name(Ljava/lang/String;)Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager$MapBackedPreferencesManagerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager$MapBackedPreferencesManagerBuilder;->build()Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mEncryptedFileStores:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getEncryptedFileStores()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mEncryptedFileStores:Ljava/util/Map;

    return-object v0
.end method

.method public getEncryptedNameValueStore(Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;Ljava/lang/Class;)Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "TT;>;"
        }
    .end annotation

    iget-object p2, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mEncryptedStores:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mEncryptedStores:Ljava/util/Map;

    new-instance p3, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;

    invoke-direct {p3}, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;-><init>()V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mEncryptedStores:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    :cond_0
    return-object p2
.end method

.method public getEncryptedStores()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mEncryptedStores:Ljava/util/Map;

    return-object v0
.end method

.method public getFileStore(Ljava/lang/String;)Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mFileStores:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mFileStores:Ljava/util/Map;

    invoke-static {}, Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager;->builder()Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager$MapBackedPreferencesManagerBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager$MapBackedPreferencesManagerBuilder;->name(Ljava/lang/String;)Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager$MapBackedPreferencesManagerBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager$MapBackedPreferencesManagerBuilder;->build()Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mFileStores:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;

    :cond_0
    return-object v0
.end method

.method public getFileStores()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mFileStores:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpClientWrapper()Lcom/microsoft/identity/common/java/interfaces/IHttpClientWrapper;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    new-instance v0, Lcom/microsoft/identity/common/java/net/DefaultHttpClientWrapper;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/net/DefaultHttpClientWrapper;-><init>()V

    return-object v0
.end method

.method public getMultiProcessStringStore(Ljava/lang/String;)Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "storeName is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mStores:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mStores:Ljava/util/Map;

    new-instance v1, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;

    invoke-direct {v1}, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mStores:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getNameValueStore(Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mStores:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mStores:Ljava/util/Map;

    new-instance v0, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;-><init>()V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mStores:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPlatformUtil()Lcom/microsoft/identity/common/java/util/IPlatformUtil;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mPlatformUtil:Lcom/microsoft/identity/common/java/util/IPlatformUtil;

    return-object v0
.end method

.method public getStateGenerator()Lcom/microsoft/identity/common/java/providers/oauth2/IStateGenerator;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mStateGenerator:Lcom/microsoft/identity/common/java/providers/oauth2/IStateGenerator;

    return-object v0
.end method

.method public getStorageEncryptionManager()Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStores()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->mStores:Ljava/util/Map;

    return-object v0
.end method
