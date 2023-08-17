.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$c;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$c;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$c$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SesCoeditStandaloneNoteLiveData"

    const-string v1, "provider change"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$c$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$c;

    iget-object v0, v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
