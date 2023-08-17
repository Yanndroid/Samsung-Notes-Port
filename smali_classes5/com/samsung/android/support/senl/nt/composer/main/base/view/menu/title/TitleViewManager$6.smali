.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->onLayoutChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutChanged# doFrame frameTimeNanos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;->val$width:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Landroid/widget/EditText;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Landroid/view/Choreographer$FrameCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
