.class Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mProgressView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->lambda$showProgress$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->lambda$showProgress$1()V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->lambda$hideProgress$2()V

    return-void
.end method

.method private synthetic lambda$hideProgress$2()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mProgressView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showProgress$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$showProgress$1()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mProgressView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/addons/b;->a:Lcom/samsung/android/support/senl/nt/app/addons/b;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mProgressView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hideProgress()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/addons/d;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/addons/d;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mProgressView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mProgressView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mProgressView:Landroid/widget/LinearLayout;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public showProgress()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mProgressView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mProgressView:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_progress_circle:I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mProgressView:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/addons/c;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/addons/c;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
