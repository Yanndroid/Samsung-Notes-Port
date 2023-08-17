.class public Lb3/e$a;
.super Lb3/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb3/e$f;-><init>(Lb3/h;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb3/d;)V
    .locals 0

    invoke-direct {p0}, Lb3/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
    .locals 1

    new-instance v0, Lb3/b;

    invoke-direct {v0, p1}, Lb3/b;-><init>(Landroid/content/Context;)V

    return-object v0
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

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lb3/e$f;->b(IILjava/util/List;)Z

    move-result p1

    return p1
.end method
