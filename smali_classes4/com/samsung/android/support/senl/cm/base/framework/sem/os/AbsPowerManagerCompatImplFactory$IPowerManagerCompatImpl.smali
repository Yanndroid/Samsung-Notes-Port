.class public interface abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPowerManagerCompatImpl"
.end annotation


# virtual methods
.method public abstract acquireWakeLock(Ljava/lang/String;J)V
.end method

.method public abstract getCurrentThermalStatus()I
.end method

.method public abstract goToSleep(J)Z
.end method

.method public abstract isInteractive()Z
.end method

.method public abstract releaseWakeLock()V
.end method

.method public abstract wakeUp(JI)Z
.end method
