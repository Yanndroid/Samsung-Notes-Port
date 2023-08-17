.class public Lcom/microsoft/identity/common/AndroidPlatformComponents;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;


# static fields
.field private static final SKEW_PREFERENCES_FILENAME:Ljava/lang/String; = "com.microsoft.identity.client.clock_correction"

.field private static final TAG:Ljava/lang/String; = "AndroidPlatformComponents"

.field private static sInitialized:Z = false


# instance fields
.field public final mActivity:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBroadcaster:Lcom/microsoft/identity/common/java/util/IBroadcaster;

.field private mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

.field public final mContext:Landroid/content/Context;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private mDefaultDevicePoPManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

.field public final mFragment:Landroidx/fragment/app/Fragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "applicationContext is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Lcom/microsoft/identity/common/AndroidPlatformComponents;->initializeStaticClasses(Landroid/content/Context;)V

    return-void
.end method

.method public static createFromActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Lcom/microsoft/identity/common/AndroidPlatformComponents;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "activity is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/identity/common/AndroidPlatformComponents;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/microsoft/identity/common/AndroidPlatformComponents;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public static createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/AndroidPlatformComponents;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "context is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/identity/common/AndroidPlatformComponents;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/microsoft/identity/common/AndroidPlatformComponents;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private static declared-synchronized initializeStaticClasses(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/microsoft/identity/common/AndroidPlatformComponents;

    monitor-enter v0

    if-eqz p0, :cond_2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/AndroidPlatformComponents;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":initializeStaticClasses"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/microsoft/identity/common/AndroidPlatformComponents;->sInitialized:Z

    if-nez v2, :cond_1

    new-instance v2, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceMetadata;

    invoke-direct {v2}, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceMetadata;-><init>()V

    invoke-static {v2}, Lcom/microsoft/identity/common/java/platform/Device;->setDeviceMetadata(Lcom/microsoft/identity/common/java/platform/IDeviceMetadata;)V

    invoke-static {}, Lcom/microsoft/identity/common/logging/Logger;->setAndroidLogger()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;->initialize(Ljava/io/File;)Z

    goto :goto_0

    :cond_0
    const-string p0, "Http caching is not enabled because the cache dir is null"

    invoke-static {v1, p0}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "context is marked non-null but is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getAuthorizationStrategyFactory()Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;
    .locals 2
    .annotation build Llombok/NonNull;
    .end annotation

    invoke-static {}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;->builder()Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->context(Landroid/content/Context;)Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->activity(Landroid/app/Activity;)Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->fragment(Landroidx/fragment/app/Fragment;)Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->build()Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getBroadcaster()Lcom/microsoft/identity/common/java/util/IBroadcaster;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mBroadcaster:Lcom/microsoft/identity/common/java/util/IBroadcaster;

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/identity/common/internal/platform/AndroidBroadcaster;

    iget-object v1, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/platform/AndroidBroadcaster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mBroadcaster:Lcom/microsoft/identity/common/java/util/IBroadcaster;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mBroadcaster:Lcom/microsoft/identity/common/java/util/IBroadcaster;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClockSkewManager()Lcom/microsoft/identity/common/java/util/IClockSkewManager;
    .locals 5
    .annotation build Llombok/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/identity/common/java/util/ClockSkewManager;

    new-instance v1, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;

    iget-object v2, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mContext:Landroid/content/Context;

    const-string v3, "com.microsoft.identity.client.clock_correction"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;)Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;-><init>(Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;)V

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/util/ClockSkewManager;-><init>(Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultDevicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mDefaultDevicePoPManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/AndroidPlatformComponents;->getDevicePopManager(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mDefaultDevicePoPManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mDefaultDevicePoPManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDevicePopManager(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Llombok/NonNull;
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;

    iget-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;

    iget-object v1, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "io_error"

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "no_such_algorithm"

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v0, "certificate_load_failure"

    goto :goto_0

    :catch_3
    move-exception p1

    const-string v0, "keystore_not_initialized"

    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize DevicePoPManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEncryptedFileStore(Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;)Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "storeName is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "helper is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;)Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptedNameValueStore(Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;Ljava/lang/Class;)Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
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

    const-string v0, "storeName is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "clazz is marked non-null but is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;)Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    move-result-object p1

    const-class p2, Ljava/lang/Long;

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;

    invoke-direct {p2, p1}, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;-><init>(Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;)V

    return-object p2

    :cond_0
    const-class p2, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/microsoft/identity/common/internal/util/SharedPrefStringNameValueStorage;

    invoke-direct {p2, p1}, Lcom/microsoft/identity/common/internal/util/SharedPrefStringNameValueStorage;-><init>(Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Only Long and String are natively supported as types"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFileStore(Ljava/lang/String;)Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "storeName is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;)Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance v0, Lcom/microsoft/identity/common/internal/util/SharedPrefStringNameValueStorage;

    new-instance v1, Lcom/microsoft/identity/common/AndroidPlatformComponents$1;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/AndroidPlatformComponents$1;-><init>(Lcom/microsoft/identity/common/AndroidPlatformComponents;Landroid/content/SharedPreferences;)V

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/util/SharedPrefStringNameValueStorage;-><init>(Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;)V

    return-object v0
.end method

.method public getNameValueStore(Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
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

    const-string v0, "storeName is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "clazz is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/microsoft/identity/common/AndroidPlatformComponents;->getEncryptedNameValueStore(Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;Ljava/lang/Class;)Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    move-result-object p1

    return-object p1
.end method

.method public getPlatformUtil()Lcom/microsoft/identity/common/java/util/IPlatformUtil;
    .locals 3
    .annotation build Llombok/NonNull;
    .end annotation

    new-instance v0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;

    iget-object v1, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    return-object v0
.end method

.method public getStateGenerator()Lcom/microsoft/identity/common/java/providers/oauth2/IStateGenerator;
    .locals 2
    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;-><init>(I)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateGenerator requires an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStorageEncryptionManager()Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
    .locals 3
    .annotation build Llombok/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/AndroidPlatformComponents;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":getStorageEncryptionManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/util/ProcessUtil;->isBrokerProcess(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "Returning AndroidBrokerStorageEncryptionManager"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;

    iget-object v1, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/crypto/AndroidBrokerStorageEncryptionManager;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;)V

    return-object v0

    :cond_0
    const-string v1, "Returning AndroidAuthSdkStorageEncryptionManager"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;

    iget-object v1, p0, Lcom/microsoft/identity/common/AndroidPlatformComponents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;)V

    return-object v0
.end method
