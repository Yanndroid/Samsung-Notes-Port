.class public Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MARGIN_RIGHT:I = 0x20

.field private static final DEFAULT_WIDTH:I = 0xba


# instance fields
.field private mIsShowing:Z

.field private mMenuIndex:I

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->mIsShowing:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->mMenuIndex:I

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->mMenuIndex:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->mIsShowing:Z

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->mIsShowing:Z

    return v0
.end method

.method public show(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->mMenuIndex:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_progress_circle_small:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/16 v2, 0xba

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/OptionMenuProgressView;->mIsShowing:Z

    :cond_2
    :goto_1
    return-void
.end method
