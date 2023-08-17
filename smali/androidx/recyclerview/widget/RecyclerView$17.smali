.class Landroidx/recyclerview/widget/RecyclerView$17;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/RecyclerView;->seslSnapScrollToPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic val$scrollDuration:F


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;F)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$17;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$17;->val$scrollDuration:F

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$17;->val$scrollDuration:F

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$17;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public getHorizontalSnapPreference()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVerticalSnapPreference()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
