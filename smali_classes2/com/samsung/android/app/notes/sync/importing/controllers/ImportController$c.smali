.class public Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->b(Ly0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly0/a;

.field public final synthetic b:Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;Ly0/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$c;->b:Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$c;->a:Ly0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/importing/services/ImportService;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$c;->a:Ly0/a;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->startImport(Ly0/a;)V

    return-void
.end method
