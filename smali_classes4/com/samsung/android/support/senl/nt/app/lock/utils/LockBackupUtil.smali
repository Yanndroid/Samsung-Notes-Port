.class public Lcom/samsung/android/support/senl/nt/app/lock/utils/LockBackupUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PREF_FINGERPRINT_UNIQUE_ID_BACKUP:Ljava/lang/String; = "PrefFingerprintUniqueIdBackup"

.field private static final PREF_FINGERPRINT_UNIQUE_TIME_BACKUP:Ljava/lang/String; = "PrefFingerprintUniqueTimeBackup"

.field private static final PREF_IRIS_UNIQUE_ID_BACKUP:Ljava/lang/String; = "PrefIrisUniqueIdBackup"

.field private static final PREF_IRIS_UNIQUE_TIME_BACKUP:Ljava/lang/String; = "PrefIrisUniqueTimeBackup"

.field private static final PREF_PASSWORD_ENCRYPTED_HASH_BACKUP:Ljava/lang/String; = "PrefPasswordEncryptedHashBackup"

.field private static final PREF_PASSWORD_ENCRYPTED_SALT_BACKUP:Ljava/lang/String; = "PrefPasswordEncryptedSaltBackup"

.field private static final PREF_PASSWORD_HASH_BACKUP:Ljava/lang/String; = "PrefPasswordHadhBackup"

.field private static final PREF_PASSWORD_OWNER_GUID_BACKUP:Ljava/lang/String; = "PrefPasswordOwnerBackup"

.field private static final PREF_PASSWORD_SALT_BACKUP:Ljava/lang/String; = "PrefPasswordSaltBackup"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupLockInfo()V
    .locals 9

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PrefPasswordEncryptedSaltBackup"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefNotesPasswordHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefNotesPasswordSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->getEncryptedPasswordHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->getEncryptedPasswordSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "PrefPasswordHadhBackup"

    invoke-interface {v2, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PrefPasswordSaltBackup"

    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PrefPasswordEncryptedHashBackup"

    invoke-interface {v2, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getLocalUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getLocalPasswordOwnerGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v5, "PrefPasswordOwnerBackup"

    if-nez v1, :cond_1

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-le v1, v3, :cond_5

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->hasEnrolledFingerprint(Landroid/content/Context;)Z

    move-result v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefFingerprintUniqueTime(Landroid/content/Context;)J

    move-result-wide v5

    cmp-long v1, v5, v3

    const-string v7, "PrefFingerprintUniqueTimeBackup"

    if-lez v1, :cond_2

    invoke-interface {v2, v7, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-interface {v2, v7, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0, v5, v6}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefFingerprintUniqueTime(Landroid/content/Context;J)V

    :cond_3
    :goto_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->hasEnrolledIris(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefIrisUniqueTime(Landroid/content/Context;)J

    move-result-wide v5

    cmp-long v1, v5, v3

    const-string v3, "PrefIrisUniqueTimeBackup"

    if-lez v1, :cond_4

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0, v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefIrisUniqueTime(Landroid/content/Context;J)V

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefFingerprintUniqueId(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    const-string v3, "PrefFingerprintUniqueIdBackup"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefIrisUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefIrisUniqueIdBackup"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6
    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getPrefFingerprintUniqueIdBackup(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PrefFingerprintUniqueIdBackup"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefFingerprintUniqueTimeBackup(Landroid/content/Context;)J
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PrefFingerprintUniqueTimeBackup"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPrefIrisUniqueIdBackup(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PrefIrisUniqueIdBackup"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefIrisUniqueTimeBackup(Landroid/content/Context;)J
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PrefIrisUniqueTimeBackup"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPrefPasswordEncryptedHashBackup(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PrefPasswordEncryptedHashBackup"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefPasswordEncryptedSaltBackup(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PrefPasswordEncryptedSaltBackup"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefPasswordHashBackup(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PrefPasswordHadhBackup"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefPasswordSaltBackup(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PrefPasswordSaltBackup"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
