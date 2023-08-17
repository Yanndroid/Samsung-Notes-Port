.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadListener"


# instance fields
.field private final mDownloadResultCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadResultCallback;

.field private final mLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadListener;->mLocale:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadListener;->mDownloadResultCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadResultCallback;

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadListener"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadListener;->mDownloadResultCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadResultCallback;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadListener;->mLocale:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadResultCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadListener;->mDownloadResultCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadResultCallback;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadListener;->mLocale:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadResultCallback;->onCancelled(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadListener;->mDownloadResultCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadResultCallback;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadListener;->mLocale:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadResultCallback;->onSuccess(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onProgress(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgress progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  max "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadListener"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadListener;->mDownloadResultCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadResultCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadResultCallback;->onProgress(II)V

    return-void
.end method
