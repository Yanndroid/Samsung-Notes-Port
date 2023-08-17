.class public interface abstract Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancel(Landroid/os/IBinder;)Z
.end method

.method public abstract getEnrolledFingers()I
.end method

.method public abstract getFingerprintId(I)Ljava/lang/String;
.end method

.method public abstract getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;
.end method

.method public abstract getIndexName(I)Ljava/lang/String;
.end method

.method public abstract getSensorPosition()I
.end method

.method public abstract getSensorType()I
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasPendingCommand()Z
.end method

.method public abstract identify(Landroid/os/IBinder;Ljava/lang/String;)I
.end method

.method public abstract identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I
.end method

.method public abstract isEnrolling()Z
.end method

.method public abstract isSensorReady()Z
.end method

.method public abstract isSupportBackupPassword()Z
.end method

.method public abstract isSupportFingerprintIds()Z
.end method

.method public abstract notifyAppActivityState(ILandroid/os/Bundle;)V
.end method

.method public abstract notifyEnrollEnd()Z
.end method

.method public abstract registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
.end method

.method public abstract showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;
.end method

.method public abstract startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)Z
.end method

.method public abstract unregisterClient(Landroid/os/IBinder;)Z
.end method

.method public abstract verifyPassword(Ljava/lang/String;)Z
.end method
