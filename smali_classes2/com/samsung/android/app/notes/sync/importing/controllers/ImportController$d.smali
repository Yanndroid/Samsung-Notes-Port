.class public Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$d;->c:Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;

    iput-boolean p2, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$d;->a:Z

    iput-boolean p3, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$d;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/importing/services/ImportService;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$d;->a:Z

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$d;->b:Z

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->onNetworkConnected(ZZ)V

    return-void
.end method
