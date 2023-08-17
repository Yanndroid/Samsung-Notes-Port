.class public Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;->a(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a$a;->c:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;

    iput p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a$a;->a:I

    iput p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->o()Lc0/a;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a$a;->a:I

    iget v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a$a;->b:I

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2}, Lc0/a;->showImportedFileCorruptedMessage(III)V

    return-void
.end method
