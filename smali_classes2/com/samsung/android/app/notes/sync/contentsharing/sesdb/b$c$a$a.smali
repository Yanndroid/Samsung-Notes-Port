.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;

    iget-object v0, v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
