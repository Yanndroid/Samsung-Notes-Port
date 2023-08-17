.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuHolder;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuAdapter;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$OnItemClickListener;
    }
.end annotation


# instance fields
.field public mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field public mOnItemClickListener:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$OnItemClickListener;

.field public mSharePopupMenu:Landroid/widget/PopupWindow;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initPopupMenu(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_title_list_popup_window_layout:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->initPopupMenuTitle(Landroid/view/View;)V

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->popup_menu_recycler_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-direct {v2, p0, p2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuAdapter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mSharePopupMenu:Landroid/widget/PopupWindow;

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PopupWindowHelper;->setDefaultState(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mSharePopupMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method private initPopupMenuTitle(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->text_menu_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public abstract getMenuItems()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOnClickListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public hidePopupMenu()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidePopupMenu#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->isShowingPopupMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mSharePopupMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public abstract initShareTypeItems(Landroid/app/Activity;)V
.end method

.method public isShowingPopupMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mSharePopupMenu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mOnItemClickListener:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$OnItemClickListener;

    return-void
.end method

.method public showPopupMenu(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showPopupMenu#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "showPopupMenu# isDestroyed"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->isShowingPopupMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "showPopupMenu# isShowing()"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mSharePopupMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mSharePopupMenu:Landroid/widget/PopupWindow;

    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "showPopupMenu# anchorView is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->initShareTypeItems(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->getMenuItems()Ljava/util/ArrayList;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->initPopupMenu(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mSharePopupMenu:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mSharePopupMenu:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->mSharePopupMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    :cond_3
    return-void
.end method
