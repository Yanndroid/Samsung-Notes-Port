.class public Lb3/e$e;
.super Lb3/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb3/e$f;-><init>(Lb3/h;)V

    iput-object p1, p0, Lb3/e$e;->a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasCloudSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object p1

    const v0, 0x8000

    invoke-virtual {p1, v0}, Lh/e;->j(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lb3/e$e;->a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SDOCX:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    if-ne v0, v1, :cond_1

    new-instance v0, Lb3/s;

    invoke-direct {v0, p1}, Lb3/s;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    new-instance p1, Lb3/n;

    invoke-direct {p1}, Lb3/n;-><init>()V

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

    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1, p2}, Lb3/e$f;->c(IILjava/util/List;)Z

    move-result p1

    return p1
.end method
