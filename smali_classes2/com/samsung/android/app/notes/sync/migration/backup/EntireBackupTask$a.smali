.class public Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;->getProgressTimerTask(I)Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask$a;->b:Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask;

    iput p2, p0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask$a;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/EntireBackupTask$a;->a:I

    invoke-virtual {v0, v1}, Lc3/n;->E(I)V

    return-void
.end method
