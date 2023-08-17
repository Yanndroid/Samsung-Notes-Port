.class public Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;->i(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$a;->c:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;)V
    .locals 2

    const-string v0, "ShareOldServiceController"

    const-string v1, "onReady()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$a;->b:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;->requestImport(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
