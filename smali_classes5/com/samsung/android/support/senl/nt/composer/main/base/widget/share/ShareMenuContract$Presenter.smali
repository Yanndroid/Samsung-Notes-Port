.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract canShowWordExportOption()Z
.end method

.method public abstract executeSaveDirectoryPicker()V
.end method

.method public abstract executeShareNote()V
.end method

.method public abstract getShareMenuList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isSingleMode()Z
.end method

.method public abstract setPdfShareType(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;)V
.end method

.method public abstract setShareType(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;)V
.end method

.method public abstract stopRecordAndAudio()V
.end method
