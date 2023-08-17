.class public Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonViewHolder;,
        Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NotesCustomAppbar"


# instance fields
.field private mActionButtonList:Landroidx/recyclerview/widget/RecyclerView;

.field private mActionButtonListAdapter:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;

.field private mAppbar:Landroid/widget/LinearLayout;

.field private mMenu:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;

.field private mMoreOptionMenuButton:Landroid/view/View;

.field private mMoreOptionMenuList:Landroidx/appcompat/widget/ListPopupWindow;

.field private mTitle:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->inflateView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->inflateView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->inflateView(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->updateMenu()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;)Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mMenu:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->updateMenu()V

    return-void
.end method

.method private updateAppbarHeight(Landroid/content/res/Configuration;)V
    .locals 3

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->comp_go_to_top_size:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->comp_actionbar_height:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mAppbar:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateMenu()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$dimen;->folder_list_item_sub_header_setting_icon_size_tablet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int v3, v0, v1

    div-int v4, v3, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesCustomAppbar"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mMenu:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v4, v0, :cond_0

    move v4, v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mActionButtonListAdapter:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;->getItemCount()I

    move-result v0

    if-eq v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update menu count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mActionButtonListAdapter:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mActionButtonListAdapter:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;->setItemCount(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public inflateView(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_custom_appbar:I

    invoke-static {p1, v0, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mMenu:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->notes_custom_appbar:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mAppbar:Landroid/widget/LinearLayout;

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->more_options_button:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mMoreOptionMenuButton:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$1;-><init>(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_button_list:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mActionButtonList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$2;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$2;-><init>(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;-><init>(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mActionButtonListAdapter:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mActionButtonList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mActionButtonList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mActionButtonListAdapter:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->text_input_dialog:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mTitle:Landroid/widget/EditText;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$3;-><init>(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->updateAppbarHeight(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->updateAppbarHeight(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mAppbar:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/a;-><init>(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showMoreOptionsMenuList()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mMenu:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mActionButtonListAdapter:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mMenu:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->getList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mActionButtonListAdapter:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;->getItemCount()I

    move-result v5

    add-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;

    iget v4, v4, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;->title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mMoreOptionMenuList:Landroidx/appcompat/widget/ListPopupWindow;

    const/16 v2, 0x190

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mMoreOptionMenuList:Landroidx/appcompat/widget/ListPopupWindow;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$4;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_page_list_item_more_menu_item:I

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$4;-><init>(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mMoreOptionMenuList:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mMoreOptionMenuButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mMoreOptionMenuList:Landroidx/appcompat/widget/ListPopupWindow;

    const v1, 0x800035

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setDropDownGravity(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->mMoreOptionMenuList:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    return-void
.end method
