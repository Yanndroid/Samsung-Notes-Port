.class Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$OnDrawerStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changedDrawerStatus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->a(Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->changedDrawerStatus(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->b(Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;->EXPAND:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->b(Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;->COLLAPSE:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->setMode(Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;)V

    return-void
.end method

.method public setDrawerMaxWidth(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->b(Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->setDrawerMaxWidth(II)V

    return-void
.end method
