.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$PageManagerInitializationTask;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageManagerInitializationTask"
.end annotation


# instance fields
.field public mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field public mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$PageManagerInitializationTask;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$PageManagerInitializationTask;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$PageManagerInitializationTask;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->init(ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Z)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$PageManagerInitializationTask;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->setDestroyFlag()V

    return-void
.end method

.method public doInBackground()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$PageManagerInitializationTask;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$PageManagerInitializationTask;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->initPageInfoList(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method
