.class public Lcom/samsung/android/app/notes/sync/migration/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/migration/b;->a(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Lcom/samsung/android/app/notes/sync/migration/b;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/b;ILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/b$a;->c:Lcom/samsung/android/app/notes/sync/migration/b;

    iput p2, p0, Lcom/samsung/android/app/notes/sync/migration/b$a;->a:I

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/migration/b$a;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/notes/sync/migration/b$a;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/c;->w()Lcom/samsung/android/app/notes/sync/migration/c;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/b$a;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->N(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/c;->w()Lcom/samsung/android/app/notes/sync/migration/c;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/b$a;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->P(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/c;->w()Lcom/samsung/android/app/notes/sync/migration/c;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/b$a;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->K(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
