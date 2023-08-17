.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestName()Ljava/lang/String;
    .locals 1

    const-string v0, "COEDIT_DUMMY_ITEM_EVENT"

    return-object v0
.end method

.method public run(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;

    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->e:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a$b$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a$b$a;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a$b;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
