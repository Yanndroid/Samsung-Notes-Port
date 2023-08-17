.class Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->getDownloadListener(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;

.field public final synthetic val$locale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$4;->val$locale:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->isDownloaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_handwriting_recognition_download_cancel:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getDisplayLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->onLoadLanguageData()V

    :cond_0
    return-void
.end method

.method public onFailed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->isDownloaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_handwriting_recognition_download_fail:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getDisplayLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->onLoadLanguageData()V

    :cond_0
    return-void
.end method

.method public onProgress(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->a(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->a(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$4;->val$locale:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->onProgressChanged(Ljava/lang/String;II)V

    return-void
.end method

.method public onSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_handwriting_recognition_download_succces:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getDisplayLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->onLoadLanguageData()V

    return-void
.end method
