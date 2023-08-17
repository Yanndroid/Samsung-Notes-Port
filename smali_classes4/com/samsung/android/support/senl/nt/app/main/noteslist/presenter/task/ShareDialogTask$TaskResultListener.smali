.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskResultListener"
.end annotation


# virtual methods
.method public abstract executeExportTask(Ljava/util/ArrayList;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;IZ)V"
        }
    .end annotation
.end method

.method public abstract removeProgressCircle()V
.end method

.method public abstract showPdfExportOptionPopup(Ljava/util/ArrayList;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;IZ)V"
        }
    .end annotation
.end method

.method public abstract showProgressCircle()V
.end method

.method public abstract showToast(Landroid/content/Context;II)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract showWordExportOptionPopup(Ljava/util/ArrayList;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckedNoteInfo;",
            ">;IZ)V"
        }
    .end annotation
.end method
