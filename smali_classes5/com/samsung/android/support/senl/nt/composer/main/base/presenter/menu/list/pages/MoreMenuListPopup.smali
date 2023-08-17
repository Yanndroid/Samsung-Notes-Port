.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnDismissListenerImpl;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnMoreMenuEventListener;
    }
.end annotation


# static fields
.field public static final ADD:I = 0x0

.field public static final COPY:I = 0x1

.field public static final CUT:I = 0x2

.field public static final DELETE:I = 0x4

.field public static final ERASE_PAGE:I = 0x5

.field public static final EXPORT:I = 0x7

.field public static final PASTE:I = 0x3

.field private static final Q_OS_OVER:Z

.field public static final SHARE:I = 0x6

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mLastIndex:I

.field private mLastMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPageListView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

.field private mLastTargetView:Landroid/view/View;

.field private mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

.field private mMappedPageId:Ljava/lang/String;

.field private mMenuMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedToUpdate:Z

.field private mOnContainerLayoutChangeListenerImpl:Landroid/view/View$OnLayoutChangeListener;

.field private mOnMoreMenuEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnMoreMenuEventListener;

.field private mOnTargetViewLayoutChangeListenerImpl:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MoreMenuListPopup"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->TAG:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->Q_OS_OVER:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnMoreMenuEventListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mOnMoreMenuEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnMoreMenuEventListener;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnDismissListenerImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnDismissListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/a;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mOnTargetViewLayoutChangeListenerImpl:Landroid/view/View$OnLayoutChangeListener;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mOnContainerLayoutChangeListenerImpl:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mLastIndex:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mLastMenuList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mLastPageListView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mLastTargetView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Landroidx/appcompat/widget/ListPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMappedPageId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMenuMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mNeedToUpdate:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mOnContainerLayoutChangeListenerImpl:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method private initMenuNames(Landroid/content/res/Resources;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMenuMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_ctx_menu_add_page:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMenuMap:Ljava/util/HashMap;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_ctx_menu_add_page:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMenuMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_ctx_menu_copy:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMenuMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_ctx_menu_cut:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMenuMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_ctx_menu_paste:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMenuMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_ctx_menu_delete:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMenuMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_ctx_menu_erase_page:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMenuMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_ctx_menu_share:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMenuMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->save_as:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnMoreMenuEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mOnMoreMenuEventListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnMoreMenuEventListener;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mOnTargetViewLayoutChangeListenerImpl:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mNeedToUpdate:Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;Landroid/view/View;Ljava/lang/String;ILjava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->setLastCallArguments(Landroid/view/View;Ljava/lang/String;ILjava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;)V

    return-void
.end method

.method public static bridge synthetic n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setLastCallArguments(Landroid/view/View;Ljava/lang/String;ILjava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mLastTargetView:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMappedPageId:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mLastIndex:I

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mLastMenuList:Ljava/util/List;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mLastPageListView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMenuMap:Ljava/util/HashMap;

    return-void
.end method

.method public dismiss()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMappedPageId:Ljava/lang/String;

    return-void
.end method

.method public isSamePage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMappedPageId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show(Landroid/view/View;Ljava/lang/String;ILjava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->initMenuNames(Landroid/content/res/Resources;)V

    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mMenuMap:Ljava/util/HashMap;

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$3;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_page_list_item_more_menu_item:I

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/ViewUtil;->measureContentWidth(Landroid/content/Context;Landroid/widget/ArrayAdapter;)I

    move-result v3

    invoke-interface {p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->getSpanCount()I

    move-result v4

    rem-int v5, p3, v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-ne v5, v4, :cond_2

    move v1, v6

    :cond_2
    const/4 v4, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v3, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_page_list_item_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/2addr v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v1, v5

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    neg-int v1, v1

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setHorizontalOffset(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/ListPopupWindow;->setOverlapAnchor(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$4;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;[Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->setLastCallArguments(Landroid/view/View;Ljava/lang/String;ILjava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    sget-boolean p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->Q_OS_OVER:Z

    if-eqz p2, :cond_4

    invoke-interface {p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->getView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mOnContainerLayoutChangeListenerImpl:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mOnTargetViewLayoutChangeListenerImpl:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->mListPopupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    return-void
.end method
