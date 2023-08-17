.class public Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->c(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$e;->c:Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;

    iput p2, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$e;->a:I

    iput p3, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/importing/services/ImportService;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$e;->a:I

    iget v1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$e;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->onNetworkConnectionFailedDialogFinish(II)V

    return-void
.end method
