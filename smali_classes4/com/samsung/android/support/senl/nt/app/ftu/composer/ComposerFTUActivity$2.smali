.class Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static final BOTTOM_LAYOUT_LANDSCAPE_WIDTH_RATIO:F = 0.625f

.field public static final BOTTOM_LAYOUT_VERTICAL_WIDTH_RATIO:F = 0.85f


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateBottomLayout(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->f(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->f(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->f(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2$1;-><init>(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
