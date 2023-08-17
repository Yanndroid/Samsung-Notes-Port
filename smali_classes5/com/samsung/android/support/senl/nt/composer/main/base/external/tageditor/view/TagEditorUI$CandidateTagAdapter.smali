.class Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CandidateTagAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG_TEXT_LENGTH_LIMIT:I = 0x1e


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;Landroid/view/View;Landroid/animation/AnimatorSet;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->playTagAnimation(Landroid/view/View;Landroid/animation/AnimatorSet;Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)Z
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->getTitle()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return v0
.end method

.method private playTagAnimation(Landroid/view/View;Landroid/animation/AnimatorSet;Z)V
    .locals 10

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->tag_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "ic_tag.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x96

    const/16 v3, 0xa8

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    :goto_0
    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;)V

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v2, 0x2

    new-array v3, v2, [I

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v4

    if-eqz p3, :cond_1

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_text_color_unselected:I

    goto :goto_1

    :cond_1
    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_text_color_selected:I

    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    aput v4, v3, v1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v4

    if-eqz p3, :cond_2

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_text_color_selected:I

    goto :goto_2

    :cond_2
    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_text_color_unselected:I

    :goto_2
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$id;->tag_text:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-array v6, v2, [I

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v7

    if-eqz p3, :cond_3

    sget v8, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_text_color_unselected:I

    goto :goto_3

    :cond_3
    sget v8, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_text_color_selected:I

    :goto_3
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    aput v7, v6, v1

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v7

    if-eqz p3, :cond_4

    sget v8, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_text_color_selected:I

    goto :goto_4

    :cond_4
    sget v8, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_text_color_unselected:I

    :goto_4
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    aput v7, v6, v5

    const-string v7, "textColor"

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$4;

    invoke-direct {v7, p0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->tag_editor_candidate_tag_radius:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v7

    if-eqz p3, :cond_5

    sget v8, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_background_color_unselected:I

    goto :goto_5

    :cond_5
    sget v8, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_background_color_selected:I

    :goto_5
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object p3

    sget v8, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_background_color_selected:I

    goto :goto_6

    :cond_6
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object p3

    sget v8, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_background_color_unselected:I

    :goto_6
    invoke-virtual {p3, v8}, Landroid/content/Context;->getColor(I)I

    move-result p3

    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v9, v5

    invoke-static {v8, v9}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p3

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$5;

    invoke-direct {v7, p0, v4, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;Landroid/graphics/drawable/GradientDrawable;Landroid/view/View;)V

    invoke-virtual {p3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v7, 0x96

    invoke-virtual {p2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v3, p1, v1

    aput-object v6, p1, v5

    aput-object p3, p1, v2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_text_color_selected:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_text_color_unselected:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->ic_tag_sharp:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->ic_tag_add:I

    :goto_1
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_icon_tint_color_selected:I

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_icon_tint_color_unselected:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->tag_editor_candidate_tag_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_background_color_selected:I

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$color;->tag_editor_candidate_background_color_unselected:I

    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;->mContainerView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->tag_ripple_background_candidate_tag_selected:I

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->tag_ripple_background_candidate_tag_unselected:I

    :goto_4
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;->mContainerView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;->mContainerView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/model/CandidateTagData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;->mContainerView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;ILcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;->mContainerView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/a;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/a;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$layout;->candidate_tag_chip_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$ViewHolder;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;Landroid/view/View;)V

    return-object p2
.end method
