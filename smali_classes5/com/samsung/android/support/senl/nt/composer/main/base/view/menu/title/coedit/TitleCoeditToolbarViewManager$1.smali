.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->updateCoeditMeetBadge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;

.field public final synthetic val$groupCountAnchorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$1;->val$groupCountAnchorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateCoeditMeetBadge# isNotAvailableActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->getTitleCoeditGuideTip()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$1;->val$groupCountAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;->showMeetGuideTip(Landroid/view/View;)V

    return-void
.end method
