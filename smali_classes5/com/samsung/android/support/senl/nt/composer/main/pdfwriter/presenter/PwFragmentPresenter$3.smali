.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->showSaveBackupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->h(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->clearDeleteData()V

    return-void
.end method

.method public getCacheList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->h(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->getDeleteTargetCacheList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPageSize([I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->access$100(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->access$200(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    return-void
.end method
