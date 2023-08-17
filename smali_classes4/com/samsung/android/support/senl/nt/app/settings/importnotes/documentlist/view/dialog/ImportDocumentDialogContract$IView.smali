.class public interface abstract Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/view/dialog/ImportDocumentDialogContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract activityFinish()V
.end method

.method public abstract getChildFragmentManager()Landroidx/fragment/app/FragmentManager;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getIsCancelDownloadingEnded()Z
.end method

.method public abstract isFragmentAdded()Z
.end method

.method public abstract registerImportListRequest()V
.end method

.method public abstract setIsCancelDownloadingEnded(Z)V
.end method

.method public abstract unregisterImportListRequest()V
.end method
