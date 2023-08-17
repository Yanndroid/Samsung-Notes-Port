.class public Lz/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lx/d;->createNMemoConverter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lz/c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    iget-object v1, p0, Lz/c;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Lz/c;->c()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, p1, v2}, Lx/d;->NMemoCoreConvertToSDoc(Ljava/lang/Object;ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(ZLjava/lang/String;I)Z
    .locals 2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    iget-object v1, p0, Lz/c;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lx/d;->NMemoConvertToSDoc(Ljava/lang/Object;ZLjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    invoke-interface {v0}, Lx/d;->getNMemoValueConvertModeNormal()I

    move-result v0

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    iget-object v1, p0, Lz/c;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lx/d;->NMemoGetMemoMetaData(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
