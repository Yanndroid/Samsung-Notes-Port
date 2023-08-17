.class public Ld2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/c;


# direct methods
.method public constructor <init>(Ld2/c;)V
    .locals 0

    iput-object p1, p0, Ld2/c$a;->a:Ld2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnded(I)V
    .locals 2

    iget-object v0, p0, Ld2/c$a;->a:Ld2/c;

    invoke-static {v0}, Ld2/c;->a(Ld2/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Ld2/c$a;->a:Ld2/c;

    sget-object v1, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->REGISTERED:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    :goto_0
    invoke-static {p1, v1}, Ld2/c;->b(Ld2/c;Lcom/samsung/android/app/notes/sync/push/base/PushRegState;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Ld2/c$a;->a:Ld2/c;

    const/4 v1, 0x0

    iput-object v1, p1, Ld2/c;->e:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Ld2/c$a;->a:Ld2/c;

    sget-object v1, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->NOT_REGISTERED:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
