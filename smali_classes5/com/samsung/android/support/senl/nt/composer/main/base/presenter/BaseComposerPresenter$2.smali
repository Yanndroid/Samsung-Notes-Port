.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->createComposerResolverContract()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/CompContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/CompContract$IView;->callOnBackPressed()V

    return-void
.end method

.method public getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mServiceContractImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v0

    return-object v0
.end method

.method public setShouldCallRequestSyncFirst(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerModelContractImpl;->setShouldCallRequestSyncFirst(Z)V

    return-void
.end method
