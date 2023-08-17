.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$ItemAdapter;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsHiding:Z

.field private mIsTabletLayout:Z

.field private mItemAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$ItemAdapter;

.field private mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

.field private mOnLayoutChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPostShowPopupRunnable:Ljava/lang/Runnable;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "QuickNoteDialog"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    return-object p0
.end method

.method private addLayoutChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mOnLayoutChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/c;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mOnLayoutChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mOnLayoutChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    return-object p0
.end method

.method private cancelHideAnimationByDismiss()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mIsHiding:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private clearListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->TAG:Ljava/lang/String;

    const-string v1, "clearListener# view is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->setOnButtonClickListener(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnButtonClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->setOnExpiredListener(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnExpiredListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->setOnSwipeDismissListener(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnSwipeDismissListener;)V

    return-void
.end method

.method private clearShowPopupRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPostShowPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPostShowPopupRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mIsHiding:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPostShowPopupRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;Landroid/app/Activity;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->getAdjustedWidth(Landroid/app/Activity;Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->handleClickEvent(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;I)V

    return-void
.end method

.method private getAdjustedWidth(Landroid/app/Activity;Landroid/view/View;)I
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->quick_note_window_side_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->quick_note_window_max_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    sub-float/2addr p2, v0

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    float-to-int p1, p1

    return p1
.end method

.method private getOffset(Landroid/view/View;)Landroid/graphics/Point;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->quick_note_elevation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->quick_note_window_side_margin:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v3, 0x0

    aget v3, v0, v3

    add-int/2addr v3, p1

    iput v3, v1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->quick_note_window_height:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mItemAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$ItemAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$ItemAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    mul-int/2addr p1, v4

    sub-int/2addr v0, p1

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->showPopupWindow()V

    return-void
.end method

.method private handleClickEvent(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;I)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->quick_note_link_button:I

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mIsHiding:Z

    if-eqz p2, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->TAG:Ljava/lang/String;

    const-string p2, "onClickLink# called during hiding"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->addLink(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->dismiss()V

    goto :goto_2

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->quick_note_content_button:I

    if-ne p2, v0, :cond_3

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mIsHiding:Z

    if-eqz p2, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->TAG:Ljava/lang/String;

    const-string p2, "onClickContent# called during hiding"

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->addContent(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V

    goto :goto_1

    :cond_3
    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->quick_note_selection_menu_btn:I

    if-ne p2, p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->hasCollapsedIcons()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->clearShowPopupRunnable()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->hideSoftInput()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPostShowPopupRunnable:Ljava/lang/Runnable;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->showPopupWindow()V

    :cond_6
    :goto_2
    return-void
.end method

.method private hideSoftInput()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mIsTabletLayout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->isInputMethodShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->hideSoftInput()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static bridge synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initButton(Landroid/widget/RemoteViews;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->quick_note_link_button:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->quick_note_content_button:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->isEnabledLinkButton()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->isEnabledContentButton()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getContentButtonStr()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->hasCollapsedIcons()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->quick_note_selection_menu_btn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->quick_note_selection_menu_arrow:I

    invoke-virtual {p1, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->quick_note_selection_menu_arrow:I

    invoke-virtual {p1, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    return-object v0
.end method

.method private initListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->setOnButtonClickListener(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnButtonClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->setOnExpiredListener(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnExpiredListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->setOnSwipeDismissListener(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnSwipeDismissListener;)V

    return-void
.end method

.method private initMenu()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->quick_note_menu:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->initListener()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->initRemoteView()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->getAdjustedWidth(Landroid/app/Activity;Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->initSelectionMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->setSuggestionViewVisibility(I)V

    return-void
.end method

.method private initRemoteView()V
    .locals 11

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_quick_note_layout:I

    invoke-direct {v2, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v7, v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v8, v4

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v4, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v3, v10}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->quick_note_selection_menu_thumbnail:I

    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->initButton(Landroid/widget/RemoteViews;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getContextAwarenessResult()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getSelectedItemId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getExcludedIds()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->quick_note_window_container_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->updateSuggestionView(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;Landroid/widget/RemoteViews;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method private initSelectionMenu(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_quick_note_selection_menu_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->quick_note_list_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quick_note_menu_bg:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$style;->MorePopupEnterExitAnimation:I

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$ItemAdapter;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$ItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mItemAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$ItemAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getIconList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$ItemAdapter;->setItemList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mItemAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$ItemAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$6;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mIsTabletLayout:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->updateSelectionMenu()V

    return-void
.end method

.method private removeLayoutChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mOnLayoutChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mOnLayoutChangeListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$OnLayoutChangeListenerImpl;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private runHideAnimationByDismiss(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->TAG:Ljava/lang/String;

    const-string v1, "runHideAnimationByDismiss#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mIsHiding:Z

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private showPopupWindow()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->getOffset(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private updateSelectionMenu()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mItemAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$ItemAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getIconList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$ItemAdapter;->setItemList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->runHideAnimationByDismiss(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->clearShowPopupRunnable()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->clearListener()V

    :cond_0
    return-void
.end method

.method public dismiss(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->cancelHideAnimationByDismiss()V

    const-string p1, "dismiss directly"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->onDismiss(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->isSuggestionViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mIsHiding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDismiss(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->clearListener()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->clearShowPopupRunnable()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->removeLayoutChangeListener()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->setGoneState()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->onDismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mIsHiding:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mIsHiding:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->initMenu()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->cancelHideAnimationByDismiss()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->addLayoutChangeListener()V

    return-void
.end method

.method public update()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->cancelHideAnimationByDismiss()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->initRemoteView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->mMenuView:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->initSelectionMenu(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->updateSelectionMenu()V

    :goto_0
    return-void
.end method
