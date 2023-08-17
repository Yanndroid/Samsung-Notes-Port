.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMode"
.end annotation


# virtual methods
.method public abstract getModeIndex()I
.end method

.method public abstract isDimItem(Ljava/lang/String;)Z
.end method

.method public abstract onBackKeyDown()Z
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end method

.method public abstract onCustomKeyEvent(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onDataChanged(I)V
.end method

.method public abstract onFolderSelected(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;I)Z
.end method

.method public abstract onItemLongPressed(I)Z
.end method

.method public abstract onItemPressReleased()V
.end method

.method public abstract onLayout()V
.end method

.method public abstract onModeEnd()V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onPrepareOptionsMenu()V
.end method

.method public abstract showBottomNavigation()V
.end method

.method public abstract updateSelectedFolderCount(ZI)V
.end method
