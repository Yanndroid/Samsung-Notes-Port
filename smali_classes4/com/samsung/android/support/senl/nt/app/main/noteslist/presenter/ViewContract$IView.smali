.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract dragAndDropFinished(Ljava/lang/String;)V
.end method

.method public abstract getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;
.end method

.method public abstract getModeIndex()I
.end method

.method public abstract getSearchImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchImpl;
.end method

.method public abstract getSpaceImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;
.end method

.method public abstract initFolderForBixby()V
.end method

.method public abstract onActivityResultAfterVerify(IILandroid/content/Intent;)V
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onContextClick(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Z
.end method

.method public abstract onDataChanged(ILjava/lang/String;)V
.end method

.method public abstract onFolderSelected(Ljava/lang/String;)V
.end method

.method public abstract onImportPdf(Ljava/lang/String;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNewNote(Ljava/lang/String;I)V
.end method

.method public abstract onNoteSelectedWidget(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
.end method

.method public abstract onScrollStateChanged(I)V
.end method

.method public abstract onScrolled(I)V
.end method

.method public abstract onShowBottomProgressCircle(I)V
.end method

.method public abstract onShowProgressCircle()V
.end method

.method public abstract releaseEmptyFolder()V
.end method

.method public abstract setCheckedDimNotes()V
.end method

.method public abstract setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setIsScrollToTop(ZI)V
.end method

.method public abstract setMode(I)Z
.end method

.method public abstract updateSelectedNoteCount()V
.end method
