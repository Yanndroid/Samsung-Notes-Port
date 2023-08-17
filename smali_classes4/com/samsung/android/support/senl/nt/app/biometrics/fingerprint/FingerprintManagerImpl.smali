.class Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/IFingerprintApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "Biometrics$FingerprintManagerImpl"


# instance fields
.field private mCancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method private compareFingerprintUniqueID(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefFingerprintUniqueId(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;->getUniqueIDFromDevice(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;->isSameIdList(Landroid/util/SparseArray;Ljava/util/Set;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "Biometrics$FingerprintManagerImpl"

    const-string v4, "all fingerprints match"

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;->convertSparseArrayToHashSet(Landroid/util/SparseArray;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefFingerprintUniqueId(Landroid/content/Context;Ljava/util/Set;)V

    new-instance v1, Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/samsung/android/sdk/pass/SpassFingerprint;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->updateActiveUser()V

    const-string v1, "finish updateActiveUser"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;->getUniqueIDFromDevice(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;->isSameIdList(Landroid/util/SparseArray;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;->convertSparseArrayToHashSet(Landroid/util/SparseArray;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefFingerprintUniqueId(Landroid/content/Context;Ljava/util/Set;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v3
.end method

.method private convertSparseArrayToHashSet(Landroid/util/SparseArray;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private hasChangedFingerprint_POS(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefFingerprintChanged(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefFingerprintChanged(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private isSameIdList(Landroid/util/SparseArray;Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "Biometrics$FingerprintManagerImpl"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "new list is null"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "old list is null"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    const-string p1, "size of list has changed"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_4

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string p1, "new item detected"

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;)V
    .locals 6

    const-string v0, "Biometrics$FingerprintManagerImpl"

    const-string v1, "authenticate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl$1;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;)V

    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public cancelAuthenticate()V
    .locals 2

    const-string v0, "Biometrics$FingerprintManagerImpl"

    const-string v1, "cancelAuthenticate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    return-void
.end method

.method public getFingerprintId(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;->getUniqueIDFromDevice(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;->convertSparseArrayToHashSet(Landroid/util/SparseArray;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public getUniqueIDFromDevice(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getFingerPrintUniqueID() : "

    const-string v1, "Biometrics$FingerprintManagerImpl"

    const-string v2, "getFingerPrintUniqueID() 1"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/pass/Spass;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pass/Spass;-><init>()V

    const-string v3, "getFingerPrintUniqueID() 2"

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/pass/Spass;->initialize(Landroid/content/Context;)V

    const-string v4, "getFingerPrintUniqueID() 3"

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/pass/Spass;->isFeatureEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/pass/Spass;->isFeatureEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    const-string v5, "getFingerPrintUniqueID() 4"

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    :catch_2
    move-exception v5

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v4, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;-><init>(Landroid/content/Context;)V

    const-string p1, "getFingerPrintUniqueID() 5"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFingerPrintUniqueID(). Fingerprint Service is supported in the device. SDK version : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pass/Spass;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->getRegisteredFingerprintUniqueID()Landroid/util/SparseArray;

    move-result-object p1

    const-string v0, "getFingerPrintUniqueID() 6"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string p1, "getFingerPrintUniqueID() : Registered fingerprint is not existed."

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-string v0, "getFingerPrintUniqueID() : Registered fingerprint is existed."

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFingerPrintUniqueID() e : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v3

    :cond_2
    const-string p1, "getFingerPrintUniqueID(). Fingerprint Service is not supported in the device."

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catch_5
    move-exception p1

    goto :goto_4

    :catch_6
    move-exception p1

    goto :goto_4

    :catch_7
    move-exception p1

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public hasChangedFingerprint(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;->hasChangedFingerprint_POS(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintManagerImpl;->compareFingerprintUniqueID(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
