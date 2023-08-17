.class Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

.field public final synthetic val$holder:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;ILcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;->val$holder:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->setSelected(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->getType()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->getType()I

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;->val$holder:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;->val$holder:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;->val$holder:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0, p1, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;Landroid/view/View;Landroid/animation/AnimatorSet;Z)V

    :cond_4
    :goto_1
    return-void
.end method
