.class Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->l(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->j(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setPostNotifyDataSetChanged()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->l(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->setObserve()V

    return-void
.end method
