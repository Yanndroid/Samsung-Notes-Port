.class Lcom/samsung/android/support/senl/nt/stt/view/STTListView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->onModeChanged(Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

.field public final synthetic val$mode:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$3;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$3;->val$mode:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$3;->val$mode:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    sget-object v1, Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;->RECORD:Lcom/samsung/android/support/senl/nt/stt/base/model/mode/STTMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$3;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->a(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$3;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->d(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$3;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->a(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$3;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->d(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method
