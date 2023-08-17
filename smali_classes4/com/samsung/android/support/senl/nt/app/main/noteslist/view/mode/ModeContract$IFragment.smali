.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFragment"
.end annotation


# virtual methods
.method public abstract changedGcsDisable()V
.end method

.method public abstract closeDrawer(ZI)Z
.end method

.method public abstract dragAndDropFinished(Ljava/lang/String;)V
.end method

.method public abstract getAddonsHandler()Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;
.end method

.method public abstract importNoteToSpace()V
.end method

.method public abstract launchActivity(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;)V
.end method

.method public abstract launchPopOverActivity(Landroid/content/Intent;ILcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;)V
.end method

.method public abstract onActivityResultAfterVerify(IILandroid/content/Intent;)V
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

.method public abstract onModeChanged(I)V
.end method

.method public abstract onNewCoeditNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onNewNote(Ljava/lang/String;I)V
.end method

.method public abstract onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
.end method

.method public abstract onNoteSelectedWidget(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
.end method

.method public abstract onNotesDataMove(Ljava/lang/String;)V
.end method

.method public abstract onTagSelectedFromTagActivity(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
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

.method public abstract setDrawerTitleBold(Ljava/lang/String;)V
.end method
