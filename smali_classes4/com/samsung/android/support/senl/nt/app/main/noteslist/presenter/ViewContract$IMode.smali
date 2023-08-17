.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMode"
.end annotation


# virtual methods
.method public abstract getCurrentOptionsMenuStatus()J
.end method

.method public abstract getIntentForNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)Landroid/content/Intent;
.end method

.method public abstract getLastOptionsMenuStatus()J
.end method

.method public abstract onBackKeyDown()Z
.end method

.method public abstract onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;Landroid/widget/TextView;)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onContextClick(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Z
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end method

.method public abstract onCustomKeyEvent(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onDataChanged(I)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onItemChecked(Ljava/lang/String;Z)V
.end method

.method public abstract onItemLongPressed(Ljava/lang/String;)Z
.end method

.method public abstract onLayout()V
.end method

.method public abstract onModeEnd()V
.end method

.method public abstract onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onPaused()V
.end method

.method public abstract onPostResume()V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onSelectAll(Z)V
.end method

.method public abstract onSubFolderSelected(Ljava/lang/String;)V
.end method

.method public abstract onSubHeaderSelected(JZ)V
.end method

.method public abstract onSwipeRefresh()Z
.end method

.method public abstract onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;Landroid/widget/TextView;)V
.end method

.method public abstract onViewChangeRestoreInstanceState()V
.end method

.method public abstract onViewChangeSaveInstanceState()V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract setEditMode(Z)Z
.end method

.method public abstract setNoNoteLayoutByMode(I)V
.end method

.method public abstract setNoNotesLayoutVisibility()V
.end method

.method public abstract showBottomNavigation(Z)V
.end method

.method public abstract updateTitle()V
.end method
