.class public Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;
.super Lcom/microsoft/identity/common/java/crypto/key/AES256KeyLoader;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static final KEYSTORE_KEY_ALIAS:Ljava/lang/String; = "KEYSTORE_KEY"

.field public static final KEY_FILE_PATH:Ljava/lang/String; = "adalks"

.field public static final KEY_FILE_SIZE:I = 0x400

.field public static final KEY_IDENTIFIER:Ljava/lang/String; = "A001"

.field private static final TAG:Ljava/lang/String;

.field private static final WRAP_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final WRAP_KEY_ALGORITHM:Ljava/lang/String; = "RSA"


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mKeyCache:Lcom/microsoft/identity/common/java/util/CachedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/util/CachedData<",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelemetryCallback:Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/crypto/key/AES256KeyLoader;-><init>()V

    new-instance v0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader$1;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader$1;-><init>(Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mKeyCache:Lcom/microsoft/identity/common/java/util/CachedData;

    const-string v0, "alias is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "context is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mAlias:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mTelemetryCallback:Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;)Ljava/io/File;
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->getKeyFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private deleteSecretKeyFromStorage()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->deleteKey(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->getKeyFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/FileUtil;->deleteFile(Ljava/io/File;)V

    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mKeyCache:Lcom/microsoft/identity/common/java/util/CachedData;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/util/CachedData;->clear()V

    return-void
.end method

.method private declared-synchronized generateKeyStoreKeyPair()Ljava/security/KeyPair;
    .locals 4
    .annotation build Llombok/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":generateKeyStoreKeyPair"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "keychain_write_v2_start"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->logFlowStart(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RSA"

    iget-object v2, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mAlias:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->getSpecForKeyStoreKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->generateKeyPair(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/KeyPair;

    move-result-object v1

    const-string v2, "keychain_write_v2_end"

    const-string v3, ""

    invoke-direct {p0, v0, v2, v3}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->logFlowSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "keychain_write_v2_end"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->logFlowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getKeyFile()Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "adalks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSpecForKeyStoreKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x12
    .end annotation

    const-string v0, "context is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "alias is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "CN=%s, OU=%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    new-instance v3, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v3, p0}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    new-instance p1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {p1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object p0

    return-object p0
.end method

.method private logEvent(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "methodTag is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "operationName is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reason is marked non-null but is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mTelemetryCallback:Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;

    if-eqz p1, :cond_0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p1, p2, p3, p4}, Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;->logEvent(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logFlowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Exception;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "methodTag is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "operationName is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reason is marked non-null but is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p4}, Lcom/microsoft/identity/common/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mTelemetryCallback:Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;

    if-eqz p1, :cond_0

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p4, p3}, Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;->logEvent(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logFlowStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "methodTag is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "operationName is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " started."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mTelemetryCallback:Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, ""

    invoke-interface {p1, p2, v0, v1}, Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;->logEvent(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logFlowSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "methodTag is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "operationName is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reason is marked non-null but is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " successfully finished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mTelemetryCallback:Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, p3}, Lcom/microsoft/identity/common/java/telemetry/ITelemetryCallback;->logEvent(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized readKeyStoreKeyPair()Ljava/security/KeyPair;
    .locals 4
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":readKeyStoreKeyPair"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "keychain_read_v2_start"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->logFlowStart(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mAlias:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->readKey(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "keychain_read_v2_end"

    const-string v3, "KeyStore is empty."

    invoke-direct {p0, v0, v2, v3}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->logFlowSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "keychain_read_v2_end"

    const-string v3, "KeyStore KeyPair is loaded."

    invoke-direct {p0, v0, v2, v3}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->logFlowSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "keychain_read_v2_end"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->logFlowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private saveSecretKeyToStorage(Ljavax/crypto/SecretKey;)V
    .locals 2
    .param p1    # Ljavax/crypto/SecretKey;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "unencryptedKey is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":saveSecretKeyToStorage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->readKeyStoreKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "No existing keypair. Generating a new one."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->generateKeyStoreKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    :cond_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {p1, v1, v0}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->wrap(Ljavax/crypto/SecretKey;Ljava/security/KeyPair;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->getKeyFile()Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/util/FileUtil;->writeDataToFile([BLjava/io/File;)V

    return-void
.end method


# virtual methods
.method public generateRandomKey()Ljavax/crypto/SecretKey;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":generateRandomKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Lcom/microsoft/identity/common/java/crypto/key/AbstractSecretKeyLoader;->generateRandomKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->saveSecretKeyToStorage(Ljavax/crypto/SecretKey;)V

    const-string v2, "key_created_v2"

    const/4 v3, 0x0

    const-string v4, "New key is generated."

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->logEvent(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New key is generated with thumbprint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/microsoft/identity/common/java/crypto/key/KeyUtil;->getKeyThumbPrint(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    const-string v0, "KEYSTORE_KEY"

    return-object v0
.end method

.method public declared-synchronized getKey()Ljavax/crypto/SecretKey;
    .locals 2
    .annotation build Llombok/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mKeyCache:Lcom/microsoft/identity/common/java/util/CachedData;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/util/CachedData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->readSecretKeyFromStorage()Ljavax/crypto/SecretKey;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->generateRandomKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mKeyCache:Lcom/microsoft/identity/common/java/util/CachedData;

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/util/CachedData;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getKeyCache()Lcom/microsoft/identity/common/java/util/CachedData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/util/CachedData<",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation

    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->mKeyCache:Lcom/microsoft/identity/common/java/util/CachedData;

    return-object v0
.end method

.method public getKeyTypeIdentifier()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    const-string v0, "A001"

    return-object v0
.end method

.method public readSecretKeyFromStorage()Ljavax/crypto/SecretKey;
    .locals 5
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":readSecretKeyFromStorage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->readKeyStoreKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "key does not exist in keystore"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->deleteSecretKeyFromStorage()V

    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->getKeyFile()Ljava/io/File;

    move-result-object v3

    const/16 v4, 0x400

    invoke-static {v3, v4}, Lcom/microsoft/identity/common/java/util/FileUtil;->readFromFile(Ljava/io/File;I)[B

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "Key file is empty"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->deleteSecretKeyFromStorage()V

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/crypto/key/AES256KeyLoader;->getKeySpecAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RSA/ECB/PKCS1Padding"

    invoke-static {v3, v2, v1, v4}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->unwrap([BLjava/lang/String;Ljava/security/KeyPair;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New key is generated with thumbprint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/microsoft/identity/common/java/crypto/key/KeyUtil;->getKeyThumbPrint(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Error when loading key from Storage, wipe all existing key data "

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->deleteSecretKeyFromStorage()V

    throw v1
.end method
