.class public Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel$OnSaveResultListener;
    }
.end annotation


# static fields
.field private static final SYNC_PREFERENCE_LOCAL_PASSWORD_USER_ID_KEY:Ljava/lang/String; = "UserIdForLocalPasswordKey"

.field private static final SYNC_PREFERENCE_USER_ID_NAME:Ljava/lang/String; = "UserIdForSync"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mEncryptedPasswordHash:Ljava/lang/String;

.field private mEncryptedPasswordSalt:Ljava/lang/String;

.field private mIsOldPasswordVerification:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PasswordModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->mIsOldPasswordVerification:Z

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedEncryptedHash : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedEncyprtedSalt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->mEncryptedPasswordHash:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->mEncryptedPasswordSalt:Ljava/lang/String;

    return-void
.end method

.method private encryptUserInfo(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->TAG:Ljava/lang/String;

    const-string v1, "convert information"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefNotesPasswordHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/PasswordEncryptUtils;->encryptString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefNotesPasswordSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/PasswordEncryptUtils;->encryptString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils$NotesPasswordHashSaltBy;->LOCK:Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils$NotesPasswordHashSaltBy;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils$NotesPasswordHashSaltBy;->getValue()I

    move-result v0

    invoke-static {p1, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->setEncryptedPasswordHashAndSalt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Fail to encrypt data."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getPasswordHash(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->mIsOldPasswordVerification:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockBackupUtil;->getPrefPasswordHashBackup(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefNotesPasswordHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPasswordSalt(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->mIsOldPasswordVerification:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockBackupUtil;->getPrefPasswordSaltBackup(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefNotesPasswordSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private storePassword(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->isPrefUserAuthInfoNull(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->TAG:Ljava/lang/String;

    const-string p2, "Fail to store password 1"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x20

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p2, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/PasswordEncryptUtils;->getSecureHash(Ljava/lang/String;[B)[B

    move-result-object p2

    if-nez p2, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->TAG:Ljava/lang/String;

    const-string p2, "Fail to store password 2"

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/PasswordEncryptUtils;->encryptBytes(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/PasswordEncryptUtils;->encryptBytes(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils$NotesPasswordHashSaltBy;->LOCK:Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils$NotesPasswordHashSaltBy;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils$NotesPasswordHashSaltBy;->getValue()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->setEncryptedPasswordHashAndSalt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->TAG:Ljava/lang/String;

    const-string p2, "Fail to store password 3"

    goto :goto_0
.end method


# virtual methods
.method public getPrefEncryptedNotesPasswordHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->mEncryptedPasswordHash:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefEncryptedNotesPasswordSalt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->mEncryptedPasswordSalt:Ljava/lang/String;

    return-object v0
.end method

.method public savePassword(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel$OnSaveResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->storePassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel$OnSaveResultListener;->onSuccess()V

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel$OnSaveResultListener;->onFailure()V

    :goto_0
    return-void
.end method

.method public setEncryptedHashAndSalt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->mEncryptedPasswordHash:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->mEncryptedPasswordSalt:Ljava/lang/String;

    return-void
.end method

.method public setIsOldPasswordVerification(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->mIsOldPasswordVerification:Z

    return-void
.end method

.method public verifyPassword(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->TAG:Ljava/lang/String;

    const-string v1, "verifyPassword Start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isDemoDevice(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v3, "verifyPassword getAuthInfo"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->isPrefUserAuthInfoNull(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    const-string v3, "verifyPassword start get hash info"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->mEncryptedPasswordHash:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->mEncryptedPasswordSalt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "verifyPassword Start decrypt Hash"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->mEncryptedPasswordHash:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/PasswordEncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->mEncryptedPasswordSalt:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/PasswordEncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v5, "verifyPassword end decrypt Hash"

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "verify password - invalid state 2"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    const-string v3, "vP - old data"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->getPasswordHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getOldUserInfo(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->getPasswordHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    return v1

    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->getPasswordSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;->encryptUserInfo(Landroid/content/Context;)V

    :goto_1
    const-string v5, "verifyPassword start cur hash"

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/PasswordEncryptUtils;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {p2, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/PasswordEncryptUtils;->getSecureHash(Ljava/lang/String;[B)[B

    move-result-object p2

    if-nez p2, :cond_7

    return v1

    :cond_7
    const-string v4, "verifyPassword end cur hash"

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/PasswordEncryptUtils;->getHexString([B)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    return v1

    :cond_8
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verify password - fail, last updated by "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->getEncryptedPasswordHashAndSaltBy(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_9
    const-string p1, "verify password - success"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_a
    :goto_2
    const-string p1, "verify password - invalid argument"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
