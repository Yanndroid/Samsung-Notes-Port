.class Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager$1;->this$0:Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager$1;->this$0:Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->a(Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;)V

    return-void
.end method
