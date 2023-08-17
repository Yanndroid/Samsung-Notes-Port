.class public Lz/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    invoke-interface {v0}, Lx/d;->createTMemoConverter()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lz/h;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lx/d$b;)Z
    .locals 2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    iget-object v1, p0, Lz/h;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lx/d;->TMemoConvertToSDoc(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lx/d$b;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    iget-object v1, p0, Lz/h;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lx/d;->TMemoGetMemoMetaDataArray(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
