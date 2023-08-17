.class Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->openDrawerMoveAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

.field public final synthetic val$holders:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$13;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$13;->val$holders:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$13;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->j(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$13;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->i(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TabletDrawerView"

    const-string v1, "openDrawerMoveAnimatorFinished# drawer is closed!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$13;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->h(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$13;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->h(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$13;->val$holders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$13;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->getDrawerHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v3

    invoke-static {v4, v3, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->r(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$13;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setVisibility(I)V

    return-void
.end method
