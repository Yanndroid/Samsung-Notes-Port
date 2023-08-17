.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$GscResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICommonDataResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GscResolver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestDelete(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public getCreatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getGcsResolver()Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$GscResolver$1;

    invoke-direct {p4, p0, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$GscResolver$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$GscResolver;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$Callback;)V

    invoke-interface {p3, p1, p2, p4}, Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract;->updateWriterName(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract$GcsCallback;)V

    return-void
.end method

.method public requestConnectSessionAsync(Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getGcsResolver()Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract;->requestConnectSessionAsync(Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    return-void
.end method

.method public requestDisConnectSessionAsync(Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getGcsResolver()Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract;->requestDisConnectSessionAsync(Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    return-void
.end method
