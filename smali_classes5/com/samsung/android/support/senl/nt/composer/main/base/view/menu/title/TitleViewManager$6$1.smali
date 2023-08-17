.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;->doFrame(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->updateCuePosition(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->isShowingRecommendedList()Z

    :cond_0
    return-void
.end method
