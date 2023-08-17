.class public Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "STTListViewAdapter"


# instance fields
.field private mAdapterContract:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapterContract;

.field private mContext:Landroid/content/Context;

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
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapterContract;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapterContract;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->mSTTVoiceItems:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;)Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapterContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapterContract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;Landroid/widget/TextView;II)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->getTouchedViewIndex(Landroid/widget/TextView;II)I

    move-result p0

    return p0
.end method

.method private getTouchedViewIndex(Landroid/widget/TextView;II)I
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr p3, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p3

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    return p1
.end method

.method private initListener(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;)V
    .locals 3

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$1;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->voiceRecognizeResult:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$2;-><init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;Landroid/view/GestureDetector;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->mSTTVoiceItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;I)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->voiceRecognizeResult:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->mSTTVoiceItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getRecognizeResult()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->voiceName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->mSTTVoiceItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->voiceDuration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->mSTTVoiceItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->getPlayTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->mSTTVoiceItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->voiceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/stt/R$color;->stt_item_playing_voice_name:I

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->voiceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/stt/R$color;->stt_item_normal_voice_name:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iput p2, p1, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->position:I

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    sget v0, Lcom/samsung/android/support/senl/nt/stt/R$layout;->voice_record_stt_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->initListener(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;)V

    return-object p2
.end method

.method public setSTTVoiceItem(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/stt/view/STTVoiceItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->mSTTVoiceItems:Ljava/util/List;

    return-void
.end method
