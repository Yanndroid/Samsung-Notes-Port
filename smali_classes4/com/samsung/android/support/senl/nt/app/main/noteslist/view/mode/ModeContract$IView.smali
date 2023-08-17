.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract changeNoteView()V
.end method

.method public abstract filteredInvalidateOptionsMenu()V
.end method

.method public abstract getGcsImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/GcsImpl;
.end method

.method public abstract getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;
.end method

.method public abstract getSearchImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchImpl;
.end method

.method public abstract onFolderSelected(Ljava/lang/String;)V
.end method

.method public abstract onNewNote(Ljava/lang/String;I)V
.end method

.method public abstract setFolderPathLayoutVisibility(Ljava/lang/String;)V
.end method

.method public abstract setIsScrollToTop(ZI)V
.end method

.method public abstract setMode(I)Z
.end method

.method public abstract setNoteFabVisibleWithAnimation()V
.end method

.method public abstract setSwipeRefreshLayoutEnabled(Z)V
.end method
