.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick# CueView"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->setCueVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->setCueProgressVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager$Contract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->requestRecommendedTitleList()V

    return-void
.end method
