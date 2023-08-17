.class public Lcom/samsung/android/app/notes/sync/migration/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/migration/b;->c(ILjava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:Lcom/samsung/android/app/notes/sync/migration/b;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/b;ILjava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/b$c;->c:Lcom/samsung/android/app/notes/sync/migration/b;

    iput p2, p0, Lcom/samsung/android/app/notes/sync/migration/b$c;->a:I

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/migration/b$c;->b:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/notes/sync/migration/b$c;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/c;->w()Lcom/samsung/android/app/notes/sync/migration/c;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/b$c;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->Q(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/c;->w()Lcom/samsung/android/app/notes/sync/migration/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/c;->O()V

    :goto_0
    return-void
.end method
