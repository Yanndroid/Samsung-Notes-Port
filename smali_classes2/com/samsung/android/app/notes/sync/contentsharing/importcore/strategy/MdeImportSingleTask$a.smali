.class public Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    return v0
.end method
