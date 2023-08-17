.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->postStartDragAndDrop(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

.field public final synthetic val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

.field public final synthetic val$position:I

.field public final synthetic val$selectedItemCount:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$4;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$4;->val$position:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$4;->val$selectedItemCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->isDragAndDropEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$4;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$4;->val$position:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$4;->val$selectedItemCount:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->g(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;->getModeIndex()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;->showBottomNavigation()V

    :cond_1
    :goto_0
    return-void
.end method
