.class public Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->convertingImportItem(Ljava/lang/String;Ld1/d;Lz/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld1/d;

.field public final synthetic b:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;Ld1/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;->b:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;->a:Ld1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;->b:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->a(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnd : success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , failed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a$a;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a$a;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    iget-object p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;->b:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;

    iput-boolean p1, p3, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mConvertingCompleted:Z

    invoke-static {p3}, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->b(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;)V

    throw p2

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;->b:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;

    iput-boolean p1, p2, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mConvertingCompleted:Z

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->b(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;->b:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->a(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress : item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;->b:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;->a:Ld1/d;

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->c(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;Ld1/d;)V

    return-void
.end method
