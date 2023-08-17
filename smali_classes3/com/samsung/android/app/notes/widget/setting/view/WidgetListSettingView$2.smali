.class Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$OnStartDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->initSettingList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$2;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$2;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->e(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$2;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->e(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method
