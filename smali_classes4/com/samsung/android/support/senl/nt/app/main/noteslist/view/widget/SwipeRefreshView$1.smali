.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
