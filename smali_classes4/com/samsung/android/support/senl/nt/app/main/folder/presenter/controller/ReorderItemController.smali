.class public Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$FolderOrder;,
        Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ReorderItemController"


# instance fields
.field private final mAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

.field private final mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

.field private final mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->mContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)V

    new-instance p3, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p3, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->mContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    return-object p0
.end method


# virtual methods
.method public reorderStart(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    return-void
.end method
