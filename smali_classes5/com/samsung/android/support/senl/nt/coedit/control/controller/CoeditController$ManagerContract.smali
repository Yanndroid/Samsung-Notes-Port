.class public interface abstract Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ManagerContract"
.end annotation


# virtual methods
.method public abstract isReconnectAvailable()Z
.end method

.method public abstract releaseForReconnect(Ljava/lang/String;)V
.end method

.method public abstract releaseJwt()V
.end method

.method public abstract requestReconnect(Ljava/lang/String;)V
.end method

.method public abstract runOnUiThread(J)V
.end method
