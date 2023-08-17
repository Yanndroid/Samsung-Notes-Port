.class public Lb3/e$c;
.super Lb3/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb3/e$f;-><init>(Lb3/h;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb3/g;)V
    .locals 0

    invoke-direct {p0}, Lb3/e$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasCloudSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object p1

    const/16 v0, 0x4000

    invoke-virtual {p1, v0}, Lh/e;->j(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lb3/p;

    invoke-direct {p1}, Lb3/p;-><init>()V

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

    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1, p2}, Lb3/e$f;->c(IILjava/util/List;)Z

    move-result p1

    return p1
.end method
