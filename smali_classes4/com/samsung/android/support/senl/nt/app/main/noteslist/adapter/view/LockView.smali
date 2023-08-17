.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mItemView:Landroid/view/View;

.field private mLockContainer:Landroid/view/View;

.field private mLockIcon:Landroid/view/View;

.field private mUnlockProgress:Landroid/view/View;

.field private final mViewMode:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mItemView:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mViewMode:I

    return-void
.end method

.method private setTouchListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/OnHolderTouchListener;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mViewMode:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->isGridViewMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockIcon:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/OnHolderTouchListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockIcon:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/OnHolderTouchListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockIcon:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/OnHolderTouchListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockIcon:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/OnHolderTouchListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public inflateLockView(ZLcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/OnHolderTouchListener;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockContainer:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mViewMode:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->isSimpleViewMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mItemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->lock_container:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_lock_container:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mItemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->lock_icon_view:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_lock_icon_view:I

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockContainer:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->lock_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockIcon:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->setTouchListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/OnHolderTouchListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->locked_notes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockContainer:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->progress_converting:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mUnlockProgress:Landroid/view/View;

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->setLockState(Z)V

    return-void
.end method

.method public setLockState(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mUnlockProgress:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockIcon:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mUnlockProgress:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->setLockState(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mLockIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/LockView;->mUnlockProgress:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
