.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageListTopMenuDragListenerImpl"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "PageListTopMenuDragListenerImpl"

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDrag# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p2, p1

    invoke-static {v0, v3, v4, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;Landroidx/recyclerview/widget/RecyclerView;FF)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    add-int/lit8 p2, p2, -0x32

    invoke-virtual {p1, v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v0, "onDrag# start"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;Landroid/view/DragEvent;)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
