.class public Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$a;->a:Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/importing/services/ImportService;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->stopImportInternal()V

    return-void
.end method
