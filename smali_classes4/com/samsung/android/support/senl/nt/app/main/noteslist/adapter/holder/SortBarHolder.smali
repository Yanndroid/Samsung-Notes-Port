.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;
.super Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SortBarHolder"


# instance fields
.field private final mSortArrow:Landroid/widget/ImageView;

.field private final mSortArrowLayout:Landroid/widget/LinearLayout;

.field private mSortBarHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;

.field private final mSortByLayout:Landroid/widget/LinearLayout;

.field private final mSortTitle:Landroid/widget/TextView;

.field private final mSubHeaderTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;-><init>(Landroid/view/View;I)V

    const/16 p2, 0x80

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mHolderType:I

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->sortby_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortByLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->sort_arrow_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortArrowLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->sort_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortTitle:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->sortby_sub_header:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSubHeaderTitle:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->sort_arrow:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortArrow:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private decorateSortArrowLayout()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getOrderType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/high16 v2, 0x43340000    # 180.0f

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortArrowLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->getSortArrowDescription(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortArrowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortArrowLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistAsButton;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistAsButton;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortArrowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private decorateSortTitle()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortTitle:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_sort_by_title:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortTitle:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_sort_by_date_created:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortTitle:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_sort_by_date_modified:I

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortByLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortByLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private decorateSubTitle(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->isCoeditMode()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSubHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->sort_bar_with_header_layout_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSubHeaderTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method private getSortArrowDescription(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_sort_by_ascending:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_sort_by_descending:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initSortBarHolderInfo()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortBarHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortByLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;->setSortByLayout(Landroid/widget/LinearLayout;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortArrowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;->setSortArrowLayout(Landroid/widget/LinearLayout;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setHolderType(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setRootCardView(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortBarHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortBarHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->getModeIndex()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;->setEnable(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    return-void
.end method


# virtual methods
.method public decorate(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Ljava/lang/String;)V
    .locals 0

    const-string p1, "SortBarHolder"

    const-string p3, "decorate"

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->initSortBarHolderInfo()V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->decorateSubTitle(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->decorateSortTitle()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->decorateSortArrowLayout()V

    return-void
.end method

.method public getSortBarHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortBarHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;

    return-object v0
.end method

.method public onBindViewHolder()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortBarHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->MemoList:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->sort_arrow_layout:I

    if-ne p1, v1, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getOrderType()I

    move-result p1

    const/4 v1, 0x4

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->setOrderType(I)V

    if-ne p1, v2, :cond_2

    const-string v2, "2"

    goto :goto_1

    :cond_2
    const-string v2, "1"

    :goto_1
    const-string v4, "706"

    const-string v5, "7063"

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortArrowLayout:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->getSortArrowDescription(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->sortby_layout:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->showSortTypeDialog()V

    goto :goto_3

    :cond_5
    const-string p1, "SortBarHolder"

    const-string v0, "onClick# unexpectedView"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;->mSortBarHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;->setEnable(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    return-void
.end method
