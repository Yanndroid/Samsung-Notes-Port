.class public Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;->f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$f;->b:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;)V
    .locals 2

    const-string v0, "ShareOldServiceController"

    const-string v1, "onReady()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;->requestShare(Ljava/lang/String;)V

    return-void
.end method
