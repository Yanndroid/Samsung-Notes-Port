.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/LockUtilsContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupSettings(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->backupSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPasswordHash(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->getPasswordHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPasswordSalt(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->getPasswordSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isSetPassword(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isSetPassword(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public updateUserAuthInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils$NotesPasswordHashSaltBy;->SYNC:Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils$NotesPasswordHashSaltBy;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils$NotesPasswordHashSaltBy;->getValue()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->setPasswordHashAndSalt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateUserAuthInfo(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->updateUserAuthInfo(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
