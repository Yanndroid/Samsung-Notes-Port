.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract clearPageFocus()V
.end method

.method public abstract clearRecyclerViewPool()V
.end method

.method public abstract clearThumbnail()V
.end method

.method public abstract getSpanCount()I
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract hasSearchFieldFocus()Z
.end method

.method public abstract hideSearchMode(Z)V
.end method

.method public abstract init()V
.end method

.method public abstract initAdapter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageList;II)V
.end method

.method public abstract isComputingLayout()Z
.end method

.method public abstract onRequestSearchMode()Z
.end method

.method public abstract setBottomNavigationButtonEnabled(Z)V
.end method

.method public abstract setPageBackgroundColor(I)V
.end method

.method public abstract startLongPressMultiSelection(I)V
.end method

.method public abstract updateDeleteOnlyState(Z)V
.end method

.method public abstract updateSearchButtonVisibility(Z)V
.end method
