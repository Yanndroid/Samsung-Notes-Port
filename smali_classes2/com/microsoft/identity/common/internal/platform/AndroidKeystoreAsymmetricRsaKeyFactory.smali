.class public Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKeyFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/platform/AsymmetricRsaKeyFactory;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKeyFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized clearAsymmetricKey(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKeyFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/identity/common/AndroidPlatformComponents;->createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/AndroidPlatformComponents;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/AndroidPlatformComponents;->getDevicePopManager(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->clearAsymmetricKey()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic generateAsymmetricKey(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/platform/AsymmetricKey;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKeyFactory;->generateAsymmetricKey(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/platform/AsymmetricRsaKey;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized generateAsymmetricKey(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/platform/AsymmetricRsaKey;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKeyFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/microsoft/identity/common/AndroidPlatformComponents;->createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/AndroidPlatformComponents;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/AndroidPlatformComponents;->getDevicePopManager(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKey;-><init>(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic loadAsymmetricKey(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/platform/AsymmetricKey;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKeyFactory;->loadAsymmetricKey(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/platform/AsymmetricRsaKey;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized loadAsymmetricKey(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/platform/AsymmetricRsaKey;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/platform/AndroidKeystoreAsymmetricRsaKeyFactory;->generateAsymmetricKey(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/platform/AsymmetricRsaKey;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
