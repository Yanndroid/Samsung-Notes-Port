.class public interface abstract Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImportTaskListener"
.end annotation


# virtual methods
.method public abstract onEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onFinish(IILjava/util/Map;I)V
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onProgress(II)V
.end method

.method public abstract onStart(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onUnsupportedVersionError(Ljava/lang/String;Ljava/lang/String;)Z
.end method
