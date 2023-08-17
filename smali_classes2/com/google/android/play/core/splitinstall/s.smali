.class final Lcom/google/android/play/core/splitinstall/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/google/android/play/core/splitinstall/t;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/t;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/s;->d:Lcom/google/android/play/core/splitinstall/t;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/s;->a:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    iput p3, p0, Lcom/google/android/play/core/splitinstall/s;->b:I

    iput p4, p0, Lcom/google/android/play/core/splitinstall/s;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/s;->d:Lcom/google/android/play/core/splitinstall/t;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/s;->a:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    iget v4, p0, Lcom/google/android/play/core/splitinstall/s;->b:I

    iget v5, p0, Lcom/google/android/play/core/splitinstall/s;->c:I

    new-instance v14, Lcom/google/android/play/core/splitinstall/a;

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->a()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->b()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->c()Ljava/util/List;

    move-result-object v13

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/google/android/play/core/splitinstall/a;-><init>(IIIJJLjava/util/List;Ljava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V

    invoke-virtual {v0, v14}, Lcom/google/android/play/core/listener/b;->a(Ljava/lang/Object;)V

    return-void
.end method
