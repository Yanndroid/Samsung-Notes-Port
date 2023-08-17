.class Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView$4;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;->smoothScrollToPositionForDragAndDrop(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field private static final SPEED:F = 300.0f


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43960000    # 300.0f

    div-float/2addr v0, p1

    return v0
.end method
