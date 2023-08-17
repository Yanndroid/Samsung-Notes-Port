.class public Lcom/samsung/android/app/notes/sync/synchronization/managers/d$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/synchronization/managers/d;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/synchronization/managers/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/d$a;->a:Lcom/samsung/android/app/notes/sync/synchronization/managers/d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    const-string v1, "by SyncReSyncManager"

    invoke-virtual {v0, v1}, Ln2/a;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/d$a;->a:Lcom/samsung/android/app/notes/sync/synchronization/managers/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/d;->a(Lcom/samsung/android/app/notes/sync/synchronization/managers/d;Z)V

    return-void
.end method
