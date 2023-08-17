.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/IBaseListContract$IView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;
.end method

.method public abstract getKeyboardTargetView()Landroid/view/View;
.end method

.method public abstract getPageSearchEditView()Landroid/widget/EditText;
.end method

.method public abstract notifyCurrentPageIndexChanged(IZZ)V
.end method

.method public abstract onModeChanged(II)V
.end method

.method public abstract onModeChangedPost(II)V
.end method

.method public abstract onSelectedPageUpdated(II)V
.end method

.method public abstract onToggleCheckBox(I)V
.end method

.method public abstract updateNoBookmarkView(Z)V
.end method

.method public abstract updateNoResultView(Z)V
.end method

.method public abstract updatePageCountInfo()V
.end method

.method public abstract updatePageCountInfo(I)V
.end method

.method public abstract updateScrollbar(I)V
.end method
