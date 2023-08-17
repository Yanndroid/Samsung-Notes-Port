.class Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->importNoteToSpace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$11;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$11;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$11;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->j(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$11;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->k(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->importNoteToCoedit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$11;->call()Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    move-result-object v0

    return-object v0
.end method
