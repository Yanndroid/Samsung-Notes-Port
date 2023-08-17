.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->updateCuePosition(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->getHitRect(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_title_recommend_cue_start_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_title_recommend_cue_size:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v3, v0

    int-to-float v0, v3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_title_recommend_cue_end_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v2, v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->setXY(FF)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->hasWritePermission()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->setCueVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;Ljava/lang/Runnable;)V

    return-void
.end method
