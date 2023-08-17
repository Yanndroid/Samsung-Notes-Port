.class public Lb3/e$m;
.super Lb3/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb3/e$f;-><init>(Lb3/h;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb3/k;)V
    .locals 0

    invoke-direct {p0}, Lb3/e$m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
    .locals 1

    invoke-static {p1}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lh/e;->j(I)V

    const/4 p1, 0x0

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

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lb3/e$f;->c(IILjava/util/List;)Z

    move-result p1

    return p1
.end method
