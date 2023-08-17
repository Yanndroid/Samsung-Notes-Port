.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPresenter"
.end annotation


# virtual methods
.method public abstract addConvertNoteTipCard(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkRunningTask(Ljava/lang/String;)Z
.end method

.method public abstract deleteItems()V
.end method

.method public abstract dismissDeleteDialog()V
.end method

.method public abstract moveToSecureFolder(I)V
.end method

.method public abstract onActivityResultAfterVerify(IILandroid/content/Intent;)V
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onNoteSelectedWidget(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
.end method

.method public abstract onTaskFinished()V
.end method

.method public abstract requestImportToSpace(Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method
