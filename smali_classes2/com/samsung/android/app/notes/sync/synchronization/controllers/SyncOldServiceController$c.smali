.class public Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;->P(Ly2/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly2/b;

.field public final synthetic b:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;Ly2/b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$c;->b:Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$c;->a:Ly2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/controllers/SyncOldServiceController$c;->a:Ly2/b;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;->requestSync(Ly2/b;)V

    return-void
.end method
