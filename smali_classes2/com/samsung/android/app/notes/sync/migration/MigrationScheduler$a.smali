.class public Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$a;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$a;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x7d0

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->b(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;J)V

    return-void
.end method
