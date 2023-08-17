.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DefaultDragListener;
.super Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DragListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultDragListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DefaultDragListener;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DragListener;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;)V

    return-void
.end method


# virtual methods
.method public dragEntered(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$DefaultDragListener;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;

    invoke-virtual {v0, p1, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->dragEnterItem(II)V

    return-void
.end method
