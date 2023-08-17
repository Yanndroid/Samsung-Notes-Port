.class Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->showFlashOptions(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

.field public final synthetic val$flashMode:I

.field public final synthetic val$visible:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    iput p2, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->val$flashMode:I

    iput p3, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->val$visible:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->a(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->a(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->flash_auto:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->a(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)Landroid/widget/FrameLayout;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/docscan/R$id;->flash_on:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-static {v2}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->a(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)Landroid/widget/FrameLayout;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/docscan/R$id;->flash_off:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-static {v3}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->a(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)Landroid/widget/FrameLayout;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/docscan/R$id;->flash_mode:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-static {v4}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->g(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-static {v4}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->j(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-static {v4}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->i(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    iget v5, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->val$flashMode:I

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->h(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/docscan/R$string;->flash:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    iget v5, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->val$flashMode:I

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->c(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    iget v5, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->val$flashMode:I

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->f(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    iget v5, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->val$flashMode:I

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->e(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    iget v5, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->val$flashMode:I

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->d(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-static {v4}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->b(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-static {v4}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->b(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-static {v4}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->b(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-static {v4}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->b(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->val$visible:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->val$visible:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->val$visible:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$2;->val$visible:I

    if-nez v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
