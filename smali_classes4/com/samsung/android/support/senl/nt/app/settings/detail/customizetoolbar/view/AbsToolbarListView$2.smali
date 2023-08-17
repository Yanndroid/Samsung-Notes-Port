.class Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "toolbar_drag"

    const-string v2, "toolbar_drag_item"

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->mChildList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarItem;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->setSelectItem(ILjava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->getDragShadowBuilder(Landroid/view/View;)Landroid/view/View$DragShadowBuilder;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;->a(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarListView;)Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;->play()Z

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->performHapticFeedback(Landroid/view/View;I)V

    const/4 p1, 0x0

    return p1
.end method
