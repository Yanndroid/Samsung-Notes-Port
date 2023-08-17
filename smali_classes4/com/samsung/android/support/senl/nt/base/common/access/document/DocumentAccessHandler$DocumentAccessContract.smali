.class public interface abstract Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DocumentAccessContract"
.end annotation


# virtual methods
.method public abstract cancelAllConvertTasks()V
.end method

.method public abstract cancelImportBySetting()V
.end method

.method public abstract cancelImportCloudDataBySetting()V
.end method

.method public abstract getDocOpenTriggerClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract isExternalCoeditRunning()Z
.end method

.method public abstract isSmartSwitchRunning()Z
.end method

.method public abstract isSyncRunning()Z
.end method
