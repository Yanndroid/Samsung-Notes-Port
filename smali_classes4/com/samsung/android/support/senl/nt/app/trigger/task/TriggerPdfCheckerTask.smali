.class public Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;
.super Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;,
        Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TriggerPdfCheckerTask"


# instance fields
.field private final mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Callback;

    return-void
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "TriggerPdfCheckerTask"

    const-string v0, "doInBackground# fail to delete file"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-static {v0, v1, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils;->downloadPdf(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v2

    :cond_1
    new-instance v2, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;

    aget-object p1, p1, v3

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, p1, v4}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    iget p1, v1, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;->mSaveResult:I

    const/4 v4, 0x1

    if-nez p1, :cond_6

    new-instance p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;-><init>(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->hasPassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p1, 0x400000

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->setErrorCode(I)V

    move p1, v3

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_PROTECTED:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;->mFilePath:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {p1, v1, v6}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->hasOwnerPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 v1, 0x800000

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->setErrorCode(I)V

    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasPassword: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isProtected: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "TriggerPdfCheckerTask"

    invoke-static {v5, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->setOpenReader(Z)V

    goto :goto_3

    :cond_6
    if-ne p1, v4, :cond_7

    const/high16 p1, 0x1000000

    :goto_1
    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->setErrorCode(I)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    const/high16 p1, 0x20000

    goto :goto_1

    :cond_8
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    const/high16 p1, 0x10000

    goto :goto_1

    :cond_9
    :goto_2
    iget-object p1, v1, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;->deleteFile(Ljava/lang/String;)V

    :goto_3
    return-object v2
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;->doInBackground([Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled()V
    .locals 2

    const-string v0, "TriggerPdfCheckerTask"

    const-string v1, "onCancelled"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->onCancelled()V

    return-void
.end method

.method public onPostExecute(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;)V
    .locals 2

    const-string v0, "TriggerPdfCheckerTask"

    const-string v1, "onCancelled"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->dismissDialog()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Callback;->onDone(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->release()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;->onPostExecute(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->showPdfCheckerProgressDialog()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Callback;

    const-string v1, "onPreExecute#, cannot create a dialog"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Callback;->onFailed(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method
