.class Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->d(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->c(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$id;->action_more:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->g(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->d(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->e(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->d(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method
