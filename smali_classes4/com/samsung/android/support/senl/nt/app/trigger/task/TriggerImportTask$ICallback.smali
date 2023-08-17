.class public interface abstract Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICallback"
.end annotation


# virtual methods
.method public abstract onFailed(Ljava/lang/String;)V
.end method

.method public abstract onFailedUnsupportedDocType(Ljava/lang/String;)V
.end method

.method public abstract onFailedWithError(ZLjava/lang/String;)V
.end method

.method public abstract onSdocImported(Ljava/lang/String;)V
.end method

.method public abstract onSdocxImported(Ljava/lang/String;)V
.end method
