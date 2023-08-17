.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;->makeNotCorruptShareNote(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;

.field public final synthetic val$pwTaskSavePdf:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;->val$pwTaskSavePdf:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;->val$pwTaskSavePdf:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;->getDefaultCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;->isIOError()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "makeNotCorruptShareNote#onError# execute picker"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;->access$300(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;->getPdfFileInfo()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setSaveAs(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;->executeSaveDirectoryPicker()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;->setSaveFlag(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;->val$pwTaskSavePdf:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;->getDefaultCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;->access$000(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;->getPdfFileInfo()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->isSaveAs()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setSaveAs(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setPath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;->access$100(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;->access$200(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->register(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;->setSaveFlag(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;->e(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuSharePresenter$1;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;)V

    return-void
.end method
