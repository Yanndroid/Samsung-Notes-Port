.class Lcom/samsung/android/support/senl/nt/stt/view/STTListView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$8;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$8;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->b(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const-string v0, "STTListView"

    const-string v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
