.class Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener;

.field public final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener;)Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "long"

    const-string v1, "press"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener;)Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/RecyclerItemClickListener$OnItemClickListener;->onLongItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
