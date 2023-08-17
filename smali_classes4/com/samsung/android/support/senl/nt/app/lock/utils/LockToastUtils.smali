.class public Lcom/samsung/android/support/senl/nt/app/lock/utils/LockToastUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showBiometricChangeToast(Landroid/content/Context;ZZ)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez v0, :cond_0

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_fingerprint_and_iris_changed_reset:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_fingerprint_and_iris_changed_reset_jpn:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_fingerprint_changed_reset:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_fingerprint_changed_reset_jpn:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_5

    if-nez v0, :cond_4

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_iris_changed_reset:I

    goto :goto_0

    :cond_4
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_iris_changed_reset_jpn:I

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public static showMultiWindowImpossibleToast(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_not_support_multi_window:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method
