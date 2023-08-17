.class Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemLayoutHeightListener;


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

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->h(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->f(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->a(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->b(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->removeDisplayList(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->c(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$3;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->g(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)V

    return-void
.end method
