.class Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->onTouch(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;I)Z

    const/4 p1, 0x0

    return p1
.end method
