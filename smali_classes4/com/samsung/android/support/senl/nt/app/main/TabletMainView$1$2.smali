.class Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$OnInterceptTouchListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public down()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->a(Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->down()V

    return-void
.end method

.method public move(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->a(Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->move(F)V

    return-void
.end method

.method public up(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;->a(Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->up(I)V

    return-void
.end method
