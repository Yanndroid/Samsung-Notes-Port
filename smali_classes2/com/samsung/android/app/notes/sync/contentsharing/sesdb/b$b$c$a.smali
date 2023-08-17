.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getSpaceCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS9] Coedit ContentProvider LiveData onChanged space count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SesCoeditSpaceAndStandaloneNoteCountLiveData"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c;

    iget-object v1, v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->b(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c;

    iget-object v1, v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->d(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;I)V

    const-string v0, "provider changed"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c;

    iget-object v0, v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
