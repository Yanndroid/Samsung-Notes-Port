.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/IToolbarManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/IToolbarManager;->canNotChangeMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toggle button is clicked but blocked"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->isDirectWriteUsing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->setDirectWrite(Z)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->clearSelectedButtonsToolbarItem()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->changeWritingMode()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->isCoeditNote()Z

    move-result p1

    const-string v0, "4002"

    if-eqz p1, :cond_2

    const-string p1, "683"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/RtToolbarMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->isTabletLayout()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/sa/ComposerSAConstants;->SCREEN_NONE:Ljava/lang/String;

    const-string v0, "8102"

    goto :goto_0

    :cond_3
    const-string p1, "401"

    goto :goto_0

    :goto_1
    return-void
.end method
