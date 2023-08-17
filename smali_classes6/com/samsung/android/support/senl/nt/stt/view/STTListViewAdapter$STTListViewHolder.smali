.class Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STTListViewHolder"
.end annotation


# instance fields
.field public background:Landroid/view/View;

.field public position:I

.field public voiceDuration:Landroid/widget/TextView;

.field public voiceName:Landroid/widget/TextView;

.field public voiceRecognizeResult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/samsung/android/support/senl/nt/stt/R$id;->voice_item_stt_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->background:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/stt/R$id;->voice_item_stt_recognize_result:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->voiceRecognizeResult:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/stt/R$id;->voice_item_stt_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->voiceName:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/stt/R$id;->voice_item_stt_duration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->voiceDuration:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->voiceRecognizeResult:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->voiceName:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->voiceDuration:Landroid/widget/TextView;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    return-void
.end method
