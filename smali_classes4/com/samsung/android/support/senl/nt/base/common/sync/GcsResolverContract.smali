.class public interface abstract Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract$GcsCallback;
    }
.end annotation


# virtual methods
.method public abstract getSpaceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract requestConnectSessionAsync(Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V
.end method

.method public abstract requestDisConnectSessionAsync(Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V
.end method

.method public abstract updateWriterName(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract$GcsCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract$GcsCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
