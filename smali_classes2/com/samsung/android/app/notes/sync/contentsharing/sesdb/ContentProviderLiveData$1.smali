.class Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->onActive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1;->this$0:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1;->this$0:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;

    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->e:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1$a;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
