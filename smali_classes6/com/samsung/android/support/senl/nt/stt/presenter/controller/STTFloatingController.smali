.class public Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCloseBtn:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mEditBtn:Landroid/widget/ImageView;

.field private mExpandBtn:Landroid/widget/ImageView;

.field private mSTTFloatingContainer:Lcom/samsung/android/support/senl/nt/stt/view/layout/STTFloatingContainer;

.field private mSTTListView:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

.field private mSTTParent:Landroid/widget/LinearLayout;

.field private mSTTPresenterContract:Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTPresenterContract:Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/stt/R$layout;->stt_floating_container:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/stt/R$id;->stt_list_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTListView:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->setSTTPresenterContract(Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;)V

    sget p2, Lcom/samsung/android/support/senl/nt/stt/R$id;->stt_floating_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/stt/view/layout/STTFloatingContainer;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTFloatingContainer:Lcom/samsung/android/support/senl/nt/stt/view/layout/STTFloatingContainer;

    sget p2, Lcom/samsung/android/support/senl/nt/stt/R$id;->stt_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTParent:Landroid/widget/LinearLayout;

    sget p2, Lcom/samsung/android/support/senl/nt/stt/R$id;->stt_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mCloseBtn:Landroid/widget/ImageView;

    sget p2, Lcom/samsung/android/support/senl/nt/stt/R$id;->stt_edit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mEditBtn:Landroid/widget/ImageView;

    sget p2, Lcom/samsung/android/support/senl/nt/stt/R$id;->stt_expand:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mExpandBtn:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mEditBtn:Landroid/widget/ImageView;

    new-instance p2, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController$1;-><init>(Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mCloseBtn:Landroid/widget/ImageView;

    new-instance p2, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController$2;-><init>(Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mExpandBtn:Landroid/widget/ImageView;

    new-instance p2, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController$3;-><init>(Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;)Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTPresenterContract:Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->hideContainer()V

    return-void
.end method

.method private hideContainer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTFloatingContainer:Lcom/samsung/android/support/senl/nt/stt/view/layout/STTFloatingContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showContainer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTFloatingContainer:Lcom/samsung/android/support/senl/nt/stt/view/layout/STTFloatingContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private updateMenuView(Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;->EDIT:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mEditBtn:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/support/senl/nt/stt/R$drawable;->stt_floating_ic_save:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mEditBtn:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/support/senl/nt/stt/R$drawable;->stt_floating_ic_edit:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public getSTTFloatingContainer()Lcom/samsung/android/support/senl/nt/stt/view/layout/STTFloatingContainer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTFloatingContainer:Lcom/samsung/android/support/senl/nt/stt/view/layout/STTFloatingContainer;

    return-object v0
.end method

.method public getSTTListView()Lcom/samsung/android/support/senl/nt/stt/view/STTListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTListView:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    return-object v0
.end method

.method public onDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTListView:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTListView:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->notifyItemChanged(I)V

    return-void
.end method

.method public onItemInserted(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTListView:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->notifyItemInserted(I)V

    return-void
.end method

.method public onItemRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTListView:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->notifyItemRemoved(I)V

    return-void
.end method

.method public onModeChanged(Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->updateMenuView(Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTListView:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->onModeChanged(Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;)V

    return-void
.end method

.method public onPlayingItemUpdated(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTListView:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->updatePlayingItemByIndex(I)V

    return-void
.end method

.method public onToggleExpandedLayout(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/stt/R$dimen;->stt_floating_height_expand_tablet:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/stt/R$dimen;->stt_floating_width_expand_tablet:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/stt/R$dimen;->stt_floating_height_expand_phone:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/stt/R$dimen;->stt_floating_width_expand_phone:I

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mExpandBtn:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/support/senl/nt/stt/R$drawable;->stt_floating_ic_collapse:I

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/stt/R$dimen;->stt_floating_height_tablet:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/stt/R$dimen;->stt_floating_width_tablet:I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/stt/R$dimen;->stt_floating_height_phone:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/stt/R$dimen;->stt_floating_width_phone:I

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mExpandBtn:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/support/senl/nt/stt/R$drawable;->stt_floating_ic_expand:I

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTParent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onToggleShowContainer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTFloatingContainer:Lcom/samsung/android/support/senl/nt/stt/view/layout/STTFloatingContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->hideContainer()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->showContainer()V

    :goto_0
    return-void
.end method

.method public onUpdatedRecognizeText(Landroid/text/SpannableStringBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTListView:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->updateCurrentRecognizeText(Landroid/text/SpannableStringBuilder;)V

    return-void
.end method

.method public onVoiceItemInit(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->mSTTListView:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->initSTTVoiceItems(Ljava/util/List;)V

    return-void
.end method
