.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback;

.field public final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "GcsGroupFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    if-eqz v0, :cond_0

    const-string v1, "GcsBaseMode"

    const-string v2, "GroupSyncResultCallback# notifyDataSetChanged"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
