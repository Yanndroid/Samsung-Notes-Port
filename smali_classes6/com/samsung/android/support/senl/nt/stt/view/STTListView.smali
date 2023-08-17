.class public Lcom/samsung/android/support/senl/nt/stt/view/STTListView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "STTListView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentRecognizeTextView:Landroid/widget/TextView;

.field private mSTTListViewAdapter:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

.field private mSTTPresenterContract:Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;

.field private mSTTRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSTTVoiceItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mCurrentRecognizeTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTListViewAdapter:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTPresenterContract:Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private init()V
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mCurrentRecognizeTextView:Landroid/widget/TextView;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$1;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mCurrentRecognizeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mCurrentRecognizeTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$2;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapterContract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTListViewAdapter:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mCurrentRecognizeTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public initSTTVoiceItems(Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTVoiceItems:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTListViewAdapter:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->setSTTVoiceItem(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTListViewAdapter:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyAdapter(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTListViewAdapter:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$9;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$9;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$8;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->notifyAdapter(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$7;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->notifyAdapter(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyItemInserted(I)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$6;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->notifyAdapter(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$5;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->notifyAdapter(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onModeChanged(Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$3;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSTTPresenterContract(Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTPresenterContract:Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;

    return-void
.end method

.method public updateCurrentRecognizeText(Landroid/text/SpannableStringBuilder;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$10;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$10;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updatePlayingItemByIndex(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->mSTTRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$4;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
