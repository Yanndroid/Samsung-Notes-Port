.class public Lb3/e$h;
.super Lb3/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb3/e$f;-><init>(Lb3/h;)V

    iput-object p1, p0, Lb3/e$h;->a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
    .locals 2

    iget-object p1, p0, Lb3/e$h;->a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SDOCX:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v1, "TipCardErrorManager"

    if-ne p1, v0, :cond_0

    const-string p1, "Network : add TipCardFailToSyncNetworkError!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lb3/p;

    invoke-direct {p1}, Lb3/p;-><init>()V

    return-object p1

    :cond_0
    const-string p1, "Network : add TipCardFailToImportNetworkError!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lb3/m;

    invoke-direct {p1}, Lb3/m;-><init>()V

    return-object p1
.end method

.method public d(ILjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lb3/e$f;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lb3/e$f;->b(IILjava/util/List;)Z

    move-result p1

    return p1
.end method
