.class Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->smoothScrollToPositionForDrawer(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

.field public final synthetic val$speed:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Landroid/content/Context;F)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$1;->val$speed:F

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$1;->val$speed:F

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method
