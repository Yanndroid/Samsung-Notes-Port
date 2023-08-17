.class Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1$1;->this$1:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1$1;->this$1:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->e(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "CustomToolbar"

    const-string v0, "onMoreMenuClick"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Menu:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1$1;->this$1:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->i(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1$1;->this$1:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->e(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;->showOverflowMenu(Ljava/util/List;)V

    return-void
.end method
