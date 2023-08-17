.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$CoeditCommonDataResolver;
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
    name = "CoeditCommonDataResolver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getCoeditResolver()Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;->requestDeleteCoeditNote(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCreatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$Callback;)V
    .locals 1
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

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getCoeditResolver()Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;->getCoeditNoteUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;

    move-result-object p3

    if-eqz p5, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;->getCreatorName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;->getCreatorName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getCoeditResolver()Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$CoeditCommonDataResolver$1;

    invoke-direct {p4, p0, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$CoeditCommonDataResolver$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$CoeditCommonDataResolver;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$Callback;)V

    invoke-interface {p3, p1, p2, p4}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;->updateWriterName(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$CoeditCallback;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public requestConnectSessionAsync(Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getCoeditResolver()Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;->requestConnectSessionAsync(Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    return-void
.end method

.method public requestDisConnectSessionAsync(Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getCoeditResolver()Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;->requestDisConnectSessionAsync(Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    return-void
.end method
