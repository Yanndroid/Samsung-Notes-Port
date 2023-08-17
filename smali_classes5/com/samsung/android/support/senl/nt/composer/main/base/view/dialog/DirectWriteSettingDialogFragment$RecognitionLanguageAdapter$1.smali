.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$AdapterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;Z)V

    return-void
.end method

.method public onDownload(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$FragmentContract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$FragmentContract;->onDownload(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$DownloadListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;Z)V

    return-void
.end method

.method public onDownloadCancel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$FragmentContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$FragmentContract;->onDownloadCancel(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;Z)V

    return-void
.end method

.method public onProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onSelectItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;->k()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick(). selectedLanguage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$RecognitionLanguageAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$FragmentContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$FragmentContract;->onDownloadSuccess(Ljava/lang/String;)V

    return-void
.end method
