.class public Lb3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/e$m;,
        Lb3/e$e;,
        Lb3/e$c;,
        Lb3/e$j;,
        Lb3/e$b;,
        Lb3/e$d;,
        Lb3/e$h;,
        Lb3/e$k;,
        Lb3/e$l;,
        Lb3/e$a;,
        Lb3/e$i;,
        Lb3/e$f;,
        Lb3/e$g;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb3/e;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILjava/util/List;Ljava/lang/Runnable;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;",
            "II",
            "Ljava/util/List<",
            "Lf1/a;",
            ">;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;",
            ">;"
        }
    .end annotation

    new-instance v0, Lb3/e$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb3/e$g;-><init>(Lb3/i;)V

    new-instance v2, Lb3/e$i;

    invoke-direct {v2, v1}, Lb3/e$i;-><init>(Lb3/j;)V

    invoke-virtual {v2, p3, v0}, Lb3/e$i;->d(ILjava/util/List;)Z

    new-instance v2, Lb3/e$a;

    invoke-direct {v2, v1}, Lb3/e$a;-><init>(Lb3/d;)V

    invoke-virtual {v2, p3, v0}, Lb3/e$a;->d(ILjava/util/List;)Z

    new-instance v2, Lb3/e$l;

    invoke-direct {v2, p2}, Lb3/e$l;-><init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    invoke-virtual {v2, p3, v0}, Lb3/e$l;->d(ILjava/util/List;)Z

    new-instance v2, Lb3/e$k;

    invoke-direct {v2, p2, p4, p5, p6}, Lb3/e$k;-><init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {v2, p3, v0}, Lb3/e$k;->d(ILjava/util/List;)Z

    new-instance p4, Lb3/e$h;

    invoke-direct {p4, p2}, Lb3/e$h;-><init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    invoke-virtual {p4, p3, v0}, Lb3/e$h;->d(ILjava/util/List;)Z

    new-instance p4, Lb3/e$d;

    invoke-direct {p4, p2}, Lb3/e$d;-><init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    invoke-virtual {p4, p3, v0}, Lb3/e$d;->d(ILjava/util/List;)Z

    new-instance p4, Lb3/e$b;

    invoke-direct {p4, v1}, Lb3/e$b;-><init>(Lb3/f;)V

    invoke-virtual {p4, p3, v0}, Lb3/e$b;->d(ILjava/util/List;)Z

    new-instance p4, Lb3/e$j;

    invoke-direct {p4, p2}, Lb3/e$j;-><init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    invoke-virtual {p4, p3, v0}, Lb3/e$j;->d(ILjava/util/List;)Z

    new-instance p4, Lb3/e$c;

    invoke-direct {p4, v1}, Lb3/e$c;-><init>(Lb3/g;)V

    invoke-virtual {p4, p3, v0}, Lb3/e$c;->d(ILjava/util/List;)Z

    new-instance p4, Lb3/e$e;

    invoke-direct {p4, p2}, Lb3/e$e;-><init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    invoke-virtual {p4, p3, v0}, Lb3/e$e;->d(ILjava/util/List;)Z

    new-instance p2, Lb3/e$m;

    invoke-direct {p2, v1}, Lb3/e$m;-><init>(Lb3/k;)V

    invoke-virtual {p2, p3, v0}, Lb3/e$m;->d(ILjava/util/List;)Z

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lb3/e$g;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, v1}, Lb3/e$g;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    invoke-static {v0}, Lb3/e$g;->a(Lb3/e$g;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lb3/e;->a:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
